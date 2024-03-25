//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftSyntaxMacros

#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#elseif canImport(WinSDK)
import WinSDK
#endif

/// `LibraryPluginProvider` is a singleton `PluginProvider` that can load shared
/// library macro plugins in the process.
@_spi(Compiler)
public class LibraryPluginProvider: PluginProvider {
  private struct LoadedLibraryPlugin {
    var libraryPath: String
    var handle: UnsafeMutableRawPointer
  }

  private struct MacroRef: Hashable {
    var moduleName: String
    var typeName: String
  }

  /// Loaded dylib handles associated with the module name.
  private var loadedLibraryPlugins: [String: LoadedLibraryPlugin] = [:]

  /// Resolved cached macros.
  private var resolvedMacros: [MacroRef: Macro.Type] = [:]

  private init() {}

  public static let shared: LibraryPluginProvider = LibraryPluginProvider()

  public func loadPluginLibrary(libraryPath: String, moduleName: String) throws {
    if let loaded = loadedLibraryPlugins[moduleName] {
      guard loaded.libraryPath == libraryPath else {
        // NOTE: Should be unreachable. Compiler should not load different
        // library for the same module name.
        throw LibraryPluginError(message: "library plugin for module '\(moduleName)' is already loaded from different path '\(loaded.libraryPath)'")
      }
      return
    }

    let dlHandle = try _dlopen(libraryPath)

    loadedLibraryPlugins[moduleName] = LoadedLibraryPlugin(
      libraryPath: libraryPath,
      handle: dlHandle
    )
  }

  public func resolveMacro(moduleName: String, typeName: String) throws -> Macro.Type {
    let macroRef = MacroRef(moduleName: moduleName, typeName: typeName)
    if let resolved = resolvedMacros[macroRef] {
      return resolved
    }

    // Find 'dlopen'ed library for the module name.
    guard let plugin = loadedLibraryPlugins[moduleName] else {
      // NOTE: Should be unreachable. Compiler should not use this unless the
      // plugin loading succeeded.
      throw LibraryPluginError(message: "plugin not loaded for module '\(moduleName)'")
    }

    // Lookup the type by name.
    guard let type = _findAnyType(moduleName, typeName) else {
      throw LibraryPluginError(message: "type '\(moduleName).\(typeName)' could not be found in library plugin '\(plugin.libraryPath)'")
    }

    // The type must be a 'Macro' type.
    guard let macro = type as? Macro.Type else {
      throw LibraryPluginError(message: "type '\(moduleName).\(typeName)' is not a valid macro implementation type in library plugin '\(plugin.libraryPath)'")
    }

    // Cache the resolved type.
    resolvedMacros[macroRef] = macro
    return macro
  }

  /// This 'PluginProvider' implements 'loadLibraryMacro()'.
  public var features: [PluginFeature] {
    [.loadPluginLibrary]
  }
}

private func _dlopen(_ path: String) throws -> UnsafeMutableRawPointer {
  #if canImport(Darwin) || canImport(Glibc)
  if let dlHandle = dlopen(path, RTLD_LAZY | RTLD_LOCAL) {
    return dlHandle
  }
  throw LibraryPluginError(message: "loader error: \(String(cString: dlerror()))")
  #elseif canImport(WinSDK)
  if let dlHandle = LoadLibraryA(path) {
    return UnsafeMutableRawPointer(dlHandle)
  }
  // FIXME: Format the error code to string.
  throw LibraryPluginError(message: "loader error: \(GetLastError())")
  #endif
}

private func _findAnyType(_ moduleName: String, _ typeName: String) -> Any.Type? {
  // Create a mangled name for struct, enum, and class. And use a runtime
  // function to find the type. Note that this simple mangling works even if the
  // actual symbol name doesn't match with it. i.e. We don't need to perform
  // punycode encodings or word substitutions.
  // FIXME: This is process global. Can we limit it to a specific .dylib ?
  for suffix in [
    /*struct*/ "V", /*enum*/ "O", /*class*/ "C"
  ] {
    let mangled = "\(moduleName.utf8.count)\(moduleName)\(typeName.utf8.count)\(typeName)\(suffix)"
    if let type = _typeByName(mangled) {
      return type
    }
  }
  return nil
}

private struct LibraryPluginError: Error, CustomStringConvertible {
  var description: String
  init(message: String) {
    self.description = message
  }
}
