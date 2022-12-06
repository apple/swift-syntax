// swift-tools-version:5.7

import PackageDescription
import Foundation

let package = Package(
  name: "CodeGeneration",
  platforms: [
      .macOS(.v10_15),
    ],
  products: [
    .executable(name: "generate-swiftbasicformat", targets: ["generate-swiftbasicformat"]),
    .executable(name: "generate-swiftideutils", targets: ["generate-swiftideutils"]),
    .executable(name: "generate-swiftsyntaxbuilder", targets: ["generate-swiftsyntaxbuilder"]),
  ],
  targets: [
    .executableTarget(
      name: "generate-swiftbasicformat",
      dependencies: [
        .product(name: "SwiftSyntax", package: "swift-syntax"),
        .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        "SyntaxSupport",
        "Utils"
      ]
    ),
    .executableTarget(
      name: "generate-swiftideutils",
      dependencies: [
        .product(name: "SwiftSyntax", package: "swift-syntax"),
        .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        "SyntaxSupport",
        "Utils"
      ]
    ),
    .executableTarget(
      name: "generate-swiftsyntaxbuilder",
      dependencies: [
        .product(name: "SwiftSyntax", package: "swift-syntax"),
        .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        "SyntaxSupport",
        "Utils"
      ]
    ),
    .target(
      name: "SyntaxSupport",
      exclude: [
        "gyb_helpers",
        "AttributeNodes.swift.gyb",
        "AvailabilityNodes.swift.gyb",
        "BuilderInitializableTypes.swift.gyb",
        "Classification.swift.gyb",
        "CommonNodes.swift.gyb",
        "DeclNodes.swift.gyb",
        "ExprNodes.swift.gyb",
        "GenericNodes.swift.gyb",
        "PatternNodes.swift.gyb",
        "StmtNodes.swift.gyb",
        "SyntaxBaseKinds.swift.gyb",
        "TokenSpec.swift.gyb",
        "Traits.swift.gyb",
        "Trivia.swift.gyb",
        "TypeNodes.swift.gyb"
      ]
    ),
    .target(
      name: "Utils",
      dependencies: [
        .product(name: "SwiftSyntax", package: "swift-syntax"),
        .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
        "SyntaxSupport"
      ]
    ),
  ]
)

if ProcessInfo.processInfo.environment["SWIFTCI_USE_LOCAL_DEPS"] == nil {
  // Building standalone.
  package.dependencies += [
    .package(url: "https://github.com/apple/swift-syntax.git", revision: "cdbdcbabb78d14e5e8d4915a115e3d843868ab8d"),
    .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "1.1.4")),
  ]
} else {
  guard let swiftSyntaxPath = ProcessInfo.processInfo.environment["SWIFTCI_SWIFTSYNTAX_PATH"] else {
    fatalError("If SWIFTCI_USE_LOCAL_DEPS is specified, SWIFTCI_SWIFTSYNTAX_PATH must point to a checkout of SwiftSyntax of the same commit that's mentioned in the standalone build")
  }
  package.dependencies += [
    .package(name: "swift-syntax", path: swiftSyntaxPath),
    .package(path: "../../swift-argument-parser"),
  ]
}
