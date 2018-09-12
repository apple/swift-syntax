//===--------------- SwiftSyntax.swift - Swift Syntax Library -------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2018 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//
// This file provides main entry point into the Syntax library.
//===----------------------------------------------------------------------===//

import Foundation

#if os(macOS)
import Darwin
#elseif os(Linux)
import Glibc
#endif

/// A list of possible errors that could be encountered while parsing a
/// Syntax tree.
public enum ParserError: Error, CustomStringConvertible {
  case swiftcFailed(Int, String)
  case invalidFile

  public var description: String {
    switch self{
    case let .swiftcFailed(exitCode, stderr):
      let stderrLines = stderr.split(separator: "\n")
      return """
      swiftc returned with non-zero exit code \(exitCode)
      stderr:
        \(stderrLines.joined(separator: "\n  "))
      """
    case .invalidFile:
      return "swiftc created an invalid syntax file"
    }
  }
}

public enum SerializationFormat {
  case json
  case byteTree
}

fileprivate struct WeakReference<T: AnyObject> {
  weak private(set) var value: T?

  init(_ value: T) {
    self.value = value
  }
}

/// Deserializes the syntax tree from its serialized form to an object tree in
/// Swift. To deserialize incrementally transferred syntax trees, the same
/// instance of the deserializer must be used for all subsequent
/// deserializations.
public final class SyntaxTreeDeserializer {
  // FIXME: This lookup table just accumulates nodes, we should invalidate nodes
  // that are no longer used at some point and remove them from the table

  /// Syntax nodes that have already been parsed and are able to be reused if
  /// they were omitted in an incremental syntax tree transfer
  private var nodeLookupTable: [SyntaxNodeId: WeakReference<RawSyntax>] = [:]

  /// Keep a strong reference to the syntax tree that contains the nodes in the
  /// `nodeLookupTable`. Because `nodeLookupTable` only holds a weak reference 
  /// to the RawSyntax nodes, all retired `RawSyntax` nodes will be deallocated
  /// once we set a new tree. The weak references in `nodeLookupTable` will then
  /// become `nil` but will also never be accessed again.
  private var nodeLookupTree: RawSyntax? = nil

  /// The IDs of the nodes that were reused as part of incremental syntax
  /// parsing during the last deserialization
  public var reusedNodeIds: Set<SyntaxNodeId> = []

  public init() {
  }

  /// Deserialize the given data as a JSON encoded syntax tree
  private func deserializeJSON(_ data: Data) throws -> RawSyntax {
    let decoder = JSONDecoder()
    decoder.userInfo[.rawSyntaxDecodedCallback] = self.addToLookupTable
    decoder.userInfo[.omittedNodeLookupFunction] = self.lookupNode
    let tree = try decoder.decode(RawSyntax.self, from: data)
    self.nodeLookupTree = tree
    return tree
  }

  /// Deserialize the given data as a ByteTree encoded syntax tree
  private func deserializeByteTree(_ data: Data) throws -> RawSyntax {
    var userInfo: [ByteTreeUserInfoKey: Any] = [:]
    userInfo[.rawSyntaxDecodedCallback] = self.addToLookupTable
    userInfo[.omittedNodeLookupFunction] = self.lookupNode
    let tree = try ByteTreeReader.read(RawSyntax.self, from: data,
                                            userInfo: &userInfo) {
      (version: ByteTreeProtocolVersion) in
      return version.major == 1
    }
    self.nodeLookupTree = tree
    return tree
  }

  /// Decode a serialized form of SourceFileSyntax to a syntax tree.
  /// - Parameter data: The UTF-8 represenation of the serialized syntax tree
  /// - Parameter serializationFormat: The format in which the syntax tree was
  ///                                  serialized
  /// - Returns: A top-level Syntax node representing the contents of the tree,
  ///            if the parse was successful.
  public func deserialize(
    _ data: Data, serializationFormat: SerializationFormat
  ) throws -> SourceFileSyntax {
    reusedNodeIds = []
    let rawSyntax: RawSyntax
    switch serializationFormat {
    case .json:
      rawSyntax = try deserializeJSON(data)
    case .byteTree:
      rawSyntax = try deserializeByteTree(data)
    }
    guard let file = makeSyntax(rawSyntax) as? SourceFileSyntax else {
      throw ParserError.invalidFile
    }
    return file
  }

  // MARK: Incremental deserialization helper functions

  private func lookupNode(id: SyntaxNodeId) -> RawSyntax? {
    reusedNodeIds.insert(id)
    guard let weakRef = nodeLookupTable[id] else {
      return nil
    }
    guard let value = weakRef.value else {
      fatalError("Trying to retrieve a node that has since been deallocated")
    }
    return value
  }

  private func addToLookupTable(_ node: RawSyntax) {
    nodeLookupTable[node.id] = WeakReference(node)
  }
}

fileprivate extension Array {
  func withUnsafeData<T>(_ body: (Data) throws -> T) rethrows -> T {
    return try self.withUnsafeBufferPointer {
        (pointer: UnsafeBufferPointer<Element>) -> T in
      let data = Data(buffer: pointer)
      return try body(data)
    }
  }
}

/// Namespace for functions to retrieve a syntax tree from the swift compiler
/// and deserializing it.
public enum SyntaxTreeParser {
  /// Parses the Swift file at the provided URL into a full-fidelity Syntax tree
  ///
  /// - Parameters:
  ///   - url: The URL you wish to parse.
  ///   - swiftcURL: The path to a `swiftc` executable that shall be used to
  ///                parse the file. If `nil`, `swiftc` will be inferred from
  ///                `PATH`.
  /// - Returns: A top-level Syntax node representing the contents of the tree,
  ///            if the parse was successful.
  /// - Throws: `ParseError.couldNotFindSwiftc` if `swiftc` could not be
  ///           located, `ParseError.invalidFile` if the file is invalid.
  ///           FIXME: Fill this out with all error cases.
  public static func parse(_ url: URL, swiftcURL: URL? = nil) throws
      -> SourceFileSyntax {
    let swiftcRunner = try SwiftcRunner(sourceFile: url, swiftcURL: swiftcURL)
    let result = try swiftcRunner.invoke()
    let syntaxTreeData = result.stdoutData
    let deserializer = SyntaxTreeDeserializer()
    // FIXME: We should use ByteTree as the internal transfer format
    return try deserializer.deserialize(syntaxTreeData,
                                        serializationFormat: .json)
  }
}
