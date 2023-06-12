  //===----------------------------------------------------------------------===//
  //
  // This source file is part of the Swift.org open source project
  //
  // Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
  // Licensed under Apache License v2.0 with Runtime Library Exception
  //
  // See https://swift.org/LICENSE.txt for license information
  // See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
  //
  //===----------------------------------------------------------------------===//
  import SwiftSyntax

extension BooleanLiteralExprSyntax {
  var literalValue: Bool {
    return booleanLiteral.tokenKind == .keyword(.true)
  }
}

extension TupleExprSyntax {
  /// Whether this tuple is a parenthesized expression, e.g., (x).
  var isParentheses: Bool {
    guard elements.count == 1, let element = elements.first else { return false }
    return element.label == nil
  }
}

extension TupleExprElementListSyntax {
  /// If this list is a single, unlabeled expression, return it.
  var singleUnlabeledExpression: ExprSyntax? {
    guard count == 1, let element = first else { return nil }
    return element.expression
  }
}

extension ExprSyntax {
  /// Whether this is a simple identifier expression and, if so, what the identifier string is.
  var simpleIdentifierExpr: String? {
    guard let identExpr = self.as(IdentifierExprSyntax.self),
          identExpr.declNameArguments == nil
    else {
      return nil
    }

    // FIXME: Handle escaping here.
    return identExpr.identifier.text
  }
}
