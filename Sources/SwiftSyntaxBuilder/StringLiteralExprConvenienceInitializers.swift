//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2021 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftSyntax

extension StringLiteralExpr {
  public init(_ value: String, openQuote: TokenSyntax = .stringQuote, closeQuote: TokenSyntax = .stringQuote) {
    let content = SyntaxFactory.makeToken(TokenKind.stringSegment(value), presence: .present)
    let segment = StringSegment(content: content)
    let segments = StringLiteralSegments([segment])

    self.init(openQuote: openQuote,
              segments: segments,
              closeQuote: closeQuote)
  }
}

extension StringLiteralExpr: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.init(value)
  }
}
