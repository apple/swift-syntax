//===--- ParserDiagnosticKinds.swift --------------------------------------===//
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

import SwiftDiagnostics
import SwiftSyntax

let diagnosticDomain: String = "SwiftParser"

extension Syntax {
  var nodeTypeNameForDiagnostics: String? {
    if let name = self.as(SyntaxEnum.self).nameForDiagnostics {
      return name
    }
    if let parent = self.parent {
      return parent.nodeTypeNameForDiagnostics
    }
    return nil
  }
}

/// A error diagnostic whose ID is determined by the diagnostic's type.
public protocol ParserError: DiagnosticMessage {
  var diagnosticID: MessageID { get }
}

public extension ParserError {
  static var diagnosticID: MessageID {
    return MessageID(domain: diagnosticDomain, id: "\(self)")
  }

  var diagnosticID: MessageID {
    return Self.diagnosticID
  }

  var severity: DiagnosticSeverity {
    return .error
  }
}

public protocol ParserFixIt: FixItMessage {
  var fixItID: MessageID { get }
}

public extension ParserFixIt {
  static var fixItID: MessageID {
    return MessageID(domain: diagnosticDomain, id: "\(self)")
  }

  var fixItID: MessageID {
    return Self.fixItID
  }
}

// MARK: - Static diagnostics

/// Please order the cases in this enum alphabetically by case name.
public enum StaticParserError: String, DiagnosticMessage {
  case cStyleForLoop = "C-style for statement has been removed in Swift 3"
  case missingColonInTernaryExprDiagnostic = "Expected ':' after '? ...' in ternary expression"
  case missingFunctionParameterClause = "Expected argument list in function declaration"
  case throwsInReturnPosition = "'throws' may only occur before '->'"

  public var message: String { self.rawValue }

  public var diagnosticID: MessageID {
    MessageID(domain: diagnosticDomain, id: "\(type(of: self)).\(self)")
  }

  public var severity: DiagnosticSeverity { .error }
}

public enum StaticParserFixIt: String, FixItMessage {
  case moveThrowBeforeArrow = "Move 'throws' before '->'"

  public var message: String { self.rawValue }

  public var fixItID: MessageID {
    MessageID(domain: diagnosticDomain, id: "\(type(of: self)).\(self)")
  }
}

// MARK: - Diagnostics (please sort alphabetically)

public struct MissingTokenError: ParserError {
  public let missingToken: TokenSyntax

  public var message: String {
    guard let parent = missingToken.parent, let parentTypeName = parent.nodeTypeNameForDiagnostics else {
      return "Expected '\(missingToken.text)'"
    }
    switch missingToken.tokenKind {
    case .leftAngle, .leftBrace, .leftParen, .leftSquareBracket:
      if parent.children(viewMode: .fixedUp).first?.as(TokenSyntax.self) == missingToken {
        return "Expected '\(missingToken.text)' to start \(parentTypeName)"
      }
    case .rightAngle, .rightBrace, .rightParen, .rightSquareBracket:
      if parent.children(viewMode: .fixedUp).last?.as(TokenSyntax.self) == missingToken {
        return "Expected '\(missingToken.text)' to end \(parentTypeName)"
      }
    default:
      break
    }
    return "Expected '\(missingToken.text)' in \(parentTypeName)"
  }
}

public struct UnexpectedNodesError: ParserError {
  public let unexpectedNodes: UnexpectedNodesSyntax

  public var message: String {
    if let parentTypeName = unexpectedNodes.parent?.nodeTypeNameForDiagnostics {
      return "Unexpected text '\(unexpectedNodes.description)' found in \(parentTypeName)"
    } else {
      return "Unexpected text '\(unexpectedNodes.description)'"
    }
  }
}
