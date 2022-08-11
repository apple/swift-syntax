//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftSyntax
import SwiftSyntaxBuilder

/// Extension to the `Child` type to provide functionality specific to
/// SwiftSyntaxBuilder.
extension Child {
  /// The type of this child, represented by a `SyntaxBuildableType`, which can
  /// be used to create the corresponding `Buildable` and `ExpressibleAs` types.
  var type: SyntaxBuildableType {
    SyntaxBuildableType(
      syntaxKind: syntaxKind,
      isOptional: isOptional
    )
  }

  /// If the child node has documentation associated with it, return it as single
  /// line string. Otherwise return an empty string.
  var documentation: String {
    flattened(indentedDocumentation: description ?? "")
  }

  /// Generate a Swift expression that creates a proper SwiftSyntax node of type
  /// `type.syntax` from a variable named `varName` of type `type.buildable` that
  /// represents this child node.
  func generateExprBuildSyntaxNode(varName: String, formatName: String) -> ExpressibleAsExprBuildable {
    if type.isToken {
      if requiresLeadingNewline {
        return FunctionCallExpr(MemberAccessExpr(base: varName, name: "withLeadingTrivia")) {
          SequenceExpr {
            MemberAccessExpr(name: "newline")
            BinaryOperatorExpr("+")
            FunctionCallExpr(MemberAccessExpr(base: formatName, name: "_makeIndent"))
            BinaryOperatorExpr("+")
            TupleExpr {
              SequenceExpr {
                MemberAccessExpr(base: varName, name: "leadingTrivia")
                BinaryOperatorExpr("??")
                ArrayExpr {}
              }
            }
          }
        }
      } else {
        return varName
      }
    } else {
      var format: ExpressibleAsExprBuildable = formatName
      if isIndented {
        format = FunctionCallExpr(MemberAccessExpr(base: format, name: "_indented"))
      }
      let expr = type.optionalChained(expr: varName)
      return FunctionCallExpr(MemberAccessExpr(base: expr, name: "build\(type.baseName)")) {
        TupleExprElement(label: "format", expression: format)
        TupleExprElement(label: "leadingTrivia", expression: NilLiteralExpr())
      }
    }
  }

  /// If this node is a token that can't contain arbitrary text, generate a Swift
  /// `assert` statement that verifies the variable with name var_name and of type
  /// `TokenSyntax` contains one of the supported text options. Otherwise return `nil`.
  func generateAssertStmtTextChoices(varName: String) -> String? {
    guard type.isToken else {
      return nil
    }

    let choices: [String]
    if !textChoices.isEmpty {
      choices = textChoices
    } else if !tokenChoices.isEmpty {
      let optionalChoices = tokenChoices.map { SYNTAX_TOKEN_MAP["\($0.name)Token"]?.text }
      choices = optionalChoices.compactMap { $0 }
      guard choices.count == optionalChoices.count else {
        // If `nil` is in the text choices, one of the token options can contain arbitrary
        // text. Don't generate an assert statement.
        return nil
      }
    } else {
      return nil
    }

    var assertChoices: [String] = []
    if type.isOptional {
      assertChoices.append("\(varName) == nil")
    }
    let unwrap = type.isOptional ? "!" : ""
    for textChoice in choices {
      assertChoices.append("\(varName)\(unwrap) == \"\(textChoice)\"")
    }
    return "assert(\(assertChoices.joined(separator: " || ")))"
  }
}
