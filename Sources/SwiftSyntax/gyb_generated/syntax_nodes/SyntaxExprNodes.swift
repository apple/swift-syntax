//// Automatically Generated From SyntaxNodes.swift.gyb.
//// Do Not Edit Directly!
//===------------ SyntaxNodes.swift - Syntax Node definitions -------------===//
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


// MARK: - MissingExprSyntax

public struct MissingExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .missingExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `MissingExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .missingExpr)
    self._syntaxNode = Syntax(data)
  }

  public init() {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), ())) { (arena, _) in
      let raw = RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: arena)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    default:
      fatalError("Invalid index")
    }
  }
}

extension MissingExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
    ])
  }
}

// MARK: - InOutExprSyntax

public struct InOutExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .inOutExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `InOutExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .inOutExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeAmpersand: UnexpectedNodesSyntax? = nil,
    ampersand: TokenSyntax = .prefixAmpersandToken(),
    _ unexpectedBetweenAmpersandAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeAmpersand, ampersand, unexpectedBetweenAmpersandAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeAmpersand?.raw,
        ampersand.raw,
        unexpectedBetweenAmpersandAndExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.inOutExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeAmpersand: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = InOutExprSyntax(newData)
    }
  }

  public var ampersand: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = InOutExprSyntax(newData)
    }
  }

  public var unexpectedBetweenAmpersandAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = InOutExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = InOutExprSyntax(newData)
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = InOutExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeAmpersand,
      \Self.ampersand,
      \Self.unexpectedBetweenAmpersandAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension InOutExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeAmpersand": unexpectedBeforeAmpersand.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "ampersand": Syntax(ampersand).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenAmpersandAndExpression": unexpectedBetweenAmpersandAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - TryExprSyntax

public struct TryExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .tryExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `TryExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .tryExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeTryKeyword: UnexpectedNodesSyntax? = nil,
    tryKeyword: TokenSyntax = .keyword(.try),
    _ unexpectedBetweenTryKeywordAndQuestionOrExclamationMark: UnexpectedNodesSyntax? = nil,
    questionOrExclamationMark: TokenSyntax? = nil,
    _ unexpectedBetweenQuestionOrExclamationMarkAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeTryKeyword, tryKeyword, unexpectedBetweenTryKeywordAndQuestionOrExclamationMark, questionOrExclamationMark, unexpectedBetweenQuestionOrExclamationMarkAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeTryKeyword?.raw,
        tryKeyword.raw,
        unexpectedBetweenTryKeywordAndQuestionOrExclamationMark?.raw,
        questionOrExclamationMark?.raw,
        unexpectedBetweenQuestionOrExclamationMarkAndExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.tryExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeTryKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public var tryKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenTryKeywordAndQuestionOrExclamationMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public var questionOrExclamationMark: TokenSyntax? {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenQuestionOrExclamationMarkAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = TryExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeTryKeyword,
      \Self.tryKeyword,
      \Self.unexpectedBetweenTryKeywordAndQuestionOrExclamationMark,
      \Self.questionOrExclamationMark,
      \Self.unexpectedBetweenQuestionOrExclamationMarkAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension TryExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeTryKeyword": unexpectedBeforeTryKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "tryKeyword": Syntax(tryKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenTryKeywordAndQuestionOrExclamationMark": unexpectedBetweenTryKeywordAndQuestionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "questionOrExclamationMark": questionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenQuestionOrExclamationMarkAndExpression": unexpectedBetweenQuestionOrExclamationMarkAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - AwaitExprSyntax

public struct AwaitExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .awaitExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `AwaitExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .awaitExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeAwaitKeyword: UnexpectedNodesSyntax? = nil,
    awaitKeyword: TokenSyntax = .keyword(.await),
    _ unexpectedBetweenAwaitKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeAwaitKeyword, awaitKeyword, unexpectedBetweenAwaitKeywordAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeAwaitKeyword?.raw,
        awaitKeyword.raw,
        unexpectedBetweenAwaitKeywordAndExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.awaitExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeAwaitKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = AwaitExprSyntax(newData)
    }
  }

  public var awaitKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = AwaitExprSyntax(newData)
    }
  }

  public var unexpectedBetweenAwaitKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = AwaitExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = AwaitExprSyntax(newData)
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = AwaitExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeAwaitKeyword,
      \Self.awaitKeyword,
      \Self.unexpectedBetweenAwaitKeywordAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension AwaitExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeAwaitKeyword": unexpectedBeforeAwaitKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "awaitKeyword": Syntax(awaitKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenAwaitKeywordAndExpression": unexpectedBetweenAwaitKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - MoveExprSyntax

public struct MoveExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .moveExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `MoveExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .moveExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeMoveKeyword: UnexpectedNodesSyntax? = nil,
    moveKeyword: TokenSyntax = .keyword(._move),
    _ unexpectedBetweenMoveKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeMoveKeyword, moveKeyword, unexpectedBetweenMoveKeywordAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeMoveKeyword?.raw,
        moveKeyword.raw,
        unexpectedBetweenMoveKeywordAndExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.moveExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeMoveKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = MoveExprSyntax(newData)
    }
  }

  public var moveKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = MoveExprSyntax(newData)
    }
  }

  public var unexpectedBetweenMoveKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = MoveExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = MoveExprSyntax(newData)
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = MoveExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeMoveKeyword,
      \Self.moveKeyword,
      \Self.unexpectedBetweenMoveKeywordAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension MoveExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeMoveKeyword": unexpectedBeforeMoveKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "moveKeyword": Syntax(moveKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenMoveKeywordAndExpression": unexpectedBetweenMoveKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - BorrowExprSyntax

public struct BorrowExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .borrowExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `BorrowExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .borrowExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBorrowKeyword: UnexpectedNodesSyntax? = nil,
    borrowKeyword: TokenSyntax = .keyword(._borrow),
    _ unexpectedBetweenBorrowKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeBorrowKeyword, borrowKeyword, unexpectedBetweenBorrowKeywordAndExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeBorrowKeyword?.raw,
        borrowKeyword.raw,
        unexpectedBetweenBorrowKeywordAndExpression?.raw,
        expression.raw,
        unexpectedAfterExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.borrowExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeBorrowKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = BorrowExprSyntax(newData)
    }
  }

  public var borrowKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = BorrowExprSyntax(newData)
    }
  }

  public var unexpectedBetweenBorrowKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = BorrowExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = BorrowExprSyntax(newData)
    }
  }

  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = BorrowExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeBorrowKeyword,
      \Self.borrowKeyword,
      \Self.unexpectedBetweenBorrowKeywordAndExpression,
      \Self.expression,
      \Self.unexpectedAfterExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension BorrowExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBorrowKeyword": unexpectedBeforeBorrowKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "borrowKeyword": Syntax(borrowKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBorrowKeywordAndExpression": unexpectedBetweenBorrowKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExpression": unexpectedAfterExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - IdentifierExprSyntax

public struct IdentifierExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .identifierExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `IdentifierExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .identifierExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeIdentifier: UnexpectedNodesSyntax? = nil,
    identifier: TokenSyntax,
    _ unexpectedBetweenIdentifierAndDeclNameArguments: UnexpectedNodesSyntax? = nil,
    declNameArguments: DeclNameArgumentsSyntax? = nil,
    _ unexpectedAfterDeclNameArguments: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeIdentifier, identifier, unexpectedBetweenIdentifierAndDeclNameArguments, declNameArguments, unexpectedAfterDeclNameArguments))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeIdentifier?.raw,
        identifier.raw,
        unexpectedBetweenIdentifierAndDeclNameArguments?.raw,
        declNameArguments?.raw,
        unexpectedAfterDeclNameArguments?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.identifierExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeIdentifier: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = IdentifierExprSyntax(newData)
    }
  }

  public var identifier: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = IdentifierExprSyntax(newData)
    }
  }

  public var unexpectedBetweenIdentifierAndDeclNameArguments: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = IdentifierExprSyntax(newData)
    }
  }

  public var declNameArguments: DeclNameArgumentsSyntax? {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      if childData == nil { return nil }
      return DeclNameArgumentsSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = IdentifierExprSyntax(newData)
    }
  }

  public var unexpectedAfterDeclNameArguments: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = IdentifierExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeIdentifier,
      \Self.identifier,
      \Self.unexpectedBetweenIdentifierAndDeclNameArguments,
      \Self.declNameArguments,
      \Self.unexpectedAfterDeclNameArguments,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension IdentifierExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeIdentifier": unexpectedBeforeIdentifier.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "identifier": Syntax(identifier).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenIdentifierAndDeclNameArguments": unexpectedBetweenIdentifierAndDeclNameArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "declNameArguments": declNameArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterDeclNameArguments": unexpectedAfterDeclNameArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - SuperRefExprSyntax

public struct SuperRefExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .superRefExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `SuperRefExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .superRefExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeSuperKeyword: UnexpectedNodesSyntax? = nil,
    superKeyword: TokenSyntax = .keyword(.super),
    _ unexpectedAfterSuperKeyword: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeSuperKeyword, superKeyword, unexpectedAfterSuperKeyword))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeSuperKeyword?.raw,
        superKeyword.raw,
        unexpectedAfterSuperKeyword?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.superRefExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeSuperKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = SuperRefExprSyntax(newData)
    }
  }

  public var superKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = SuperRefExprSyntax(newData)
    }
  }

  public var unexpectedAfterSuperKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = SuperRefExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeSuperKeyword,
      \Self.superKeyword,
      \Self.unexpectedAfterSuperKeyword,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension SuperRefExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeSuperKeyword": unexpectedBeforeSuperKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "superKeyword": Syntax(superKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterSuperKeyword": unexpectedAfterSuperKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - NilLiteralExprSyntax

public struct NilLiteralExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .nilLiteralExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `NilLiteralExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .nilLiteralExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeNilKeyword: UnexpectedNodesSyntax? = nil,
    nilKeyword: TokenSyntax = .keyword(.nil),
    _ unexpectedAfterNilKeyword: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeNilKeyword, nilKeyword, unexpectedAfterNilKeyword))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeNilKeyword?.raw,
        nilKeyword.raw,
        unexpectedAfterNilKeyword?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.nilLiteralExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeNilKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = NilLiteralExprSyntax(newData)
    }
  }

  public var nilKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = NilLiteralExprSyntax(newData)
    }
  }

  public var unexpectedAfterNilKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = NilLiteralExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeNilKeyword,
      \Self.nilKeyword,
      \Self.unexpectedAfterNilKeyword,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension NilLiteralExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeNilKeyword": unexpectedBeforeNilKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "nilKeyword": Syntax(nilKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterNilKeyword": unexpectedAfterNilKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - DiscardAssignmentExprSyntax

public struct DiscardAssignmentExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .discardAssignmentExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `DiscardAssignmentExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .discardAssignmentExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeWildcard: UnexpectedNodesSyntax? = nil,
    wildcard: TokenSyntax = .wildcardToken(),
    _ unexpectedAfterWildcard: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeWildcard, wildcard, unexpectedAfterWildcard))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeWildcard?.raw,
        wildcard.raw,
        unexpectedAfterWildcard?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.discardAssignmentExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeWildcard: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = DiscardAssignmentExprSyntax(newData)
    }
  }

  public var wildcard: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = DiscardAssignmentExprSyntax(newData)
    }
  }

  public var unexpectedAfterWildcard: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = DiscardAssignmentExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeWildcard,
      \Self.wildcard,
      \Self.unexpectedAfterWildcard,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension DiscardAssignmentExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeWildcard": unexpectedBeforeWildcard.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "wildcard": Syntax(wildcard).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterWildcard": unexpectedAfterWildcard.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - AssignmentExprSyntax

public struct AssignmentExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .assignmentExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `AssignmentExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .assignmentExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeAssignToken: UnexpectedNodesSyntax? = nil,
    assignToken: TokenSyntax = .equalToken(),
    _ unexpectedAfterAssignToken: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeAssignToken, assignToken, unexpectedAfterAssignToken))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeAssignToken?.raw,
        assignToken.raw,
        unexpectedAfterAssignToken?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.assignmentExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeAssignToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = AssignmentExprSyntax(newData)
    }
  }

  public var assignToken: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = AssignmentExprSyntax(newData)
    }
  }

  public var unexpectedAfterAssignToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = AssignmentExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeAssignToken,
      \Self.assignToken,
      \Self.unexpectedAfterAssignToken,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension AssignmentExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeAssignToken": unexpectedBeforeAssignToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "assignToken": Syntax(assignToken).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterAssignToken": unexpectedAfterAssignToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - PackElementExprSyntax

public struct PackElementExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .packElementExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `PackElementExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .packElementExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<P: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeEachKeyword: UnexpectedNodesSyntax? = nil,
    eachKeyword: TokenSyntax = .keyword(.each),
    _ unexpectedBetweenEachKeywordAndPackRefExpr: UnexpectedNodesSyntax? = nil,
    packRefExpr: P,
    _ unexpectedAfterPackRefExpr: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeEachKeyword, eachKeyword, unexpectedBetweenEachKeywordAndPackRefExpr, packRefExpr, unexpectedAfterPackRefExpr))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeEachKeyword?.raw,
        eachKeyword.raw,
        unexpectedBetweenEachKeywordAndPackRefExpr?.raw,
        packRefExpr.raw,
        unexpectedAfterPackRefExpr?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.packElementExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeEachKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = PackElementExprSyntax(newData)
    }
  }

  public var eachKeyword: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = PackElementExprSyntax(newData)
    }
  }

  public var unexpectedBetweenEachKeywordAndPackRefExpr: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = PackElementExprSyntax(newData)
    }
  }

  public var packRefExpr: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = PackElementExprSyntax(newData)
    }
  }

  public var unexpectedAfterPackRefExpr: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = PackElementExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeEachKeyword,
      \Self.eachKeyword,
      \Self.unexpectedBetweenEachKeywordAndPackRefExpr,
      \Self.packRefExpr,
      \Self.unexpectedAfterPackRefExpr,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension PackElementExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeEachKeyword": unexpectedBeforeEachKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "eachKeyword": Syntax(eachKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenEachKeywordAndPackRefExpr": unexpectedBetweenEachKeywordAndPackRefExpr.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "packRefExpr": Syntax(packRefExpr).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterPackRefExpr": unexpectedAfterPackRefExpr.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - SequenceExprSyntax

public struct SequenceExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .sequenceExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `SequenceExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .sequenceExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeElements: UnexpectedNodesSyntax? = nil,
    elements: ExprListSyntax,
    _ unexpectedAfterElements: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeElements, elements, unexpectedAfterElements))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeElements?.raw,
        elements.raw,
        unexpectedAfterElements?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.sequenceExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeElements: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = SequenceExprSyntax(newData)
    }
  }

  public var elements: ExprListSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = SequenceExprSyntax(newData)
    }
  }

  /// Adds the provided `Element` to the node's `elements`
  /// collection.
  /// - param element: The new `Element` to add to the node's
  ///                  `elements` collection.
  /// - returns: A copy of the receiver with the provided `Element`
  ///            appended to its `elements` collection.
  public func addElement(_ element: ExprSyntax) -> SequenceExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[1] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.exprList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 1, with: collection, arena: arena)
    return SequenceExprSyntax(newData)
  }

  public var unexpectedAfterElements: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = SequenceExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeElements,
      \Self.elements,
      \Self.unexpectedAfterElements,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension SequenceExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeElements": unexpectedBeforeElements.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elements": Syntax(elements).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterElements": unexpectedAfterElements.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - PrefixOperatorExprSyntax

public struct PrefixOperatorExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .prefixOperatorExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `PrefixOperatorExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .prefixOperatorExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<P: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeOperatorToken: UnexpectedNodesSyntax? = nil,
    operatorToken: TokenSyntax? = nil,
    _ unexpectedBetweenOperatorTokenAndPostfixExpression: UnexpectedNodesSyntax? = nil,
    postfixExpression: P,
    _ unexpectedAfterPostfixExpression: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeOperatorToken, operatorToken, unexpectedBetweenOperatorTokenAndPostfixExpression, postfixExpression, unexpectedAfterPostfixExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeOperatorToken?.raw,
        operatorToken?.raw,
        unexpectedBetweenOperatorTokenAndPostfixExpression?.raw,
        postfixExpression.raw,
        unexpectedAfterPostfixExpression?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.prefixOperatorExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeOperatorToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = PrefixOperatorExprSyntax(newData)
    }
  }

  public var operatorToken: TokenSyntax? {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = PrefixOperatorExprSyntax(newData)
    }
  }

  public var unexpectedBetweenOperatorTokenAndPostfixExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = PrefixOperatorExprSyntax(newData)
    }
  }

  public var postfixExpression: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = PrefixOperatorExprSyntax(newData)
    }
  }

  public var unexpectedAfterPostfixExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = PrefixOperatorExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeOperatorToken,
      \Self.operatorToken,
      \Self.unexpectedBetweenOperatorTokenAndPostfixExpression,
      \Self.postfixExpression,
      \Self.unexpectedAfterPostfixExpression,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension PrefixOperatorExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeOperatorToken": unexpectedBeforeOperatorToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "operatorToken": operatorToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenOperatorTokenAndPostfixExpression": unexpectedBetweenOperatorTokenAndPostfixExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "postfixExpression": Syntax(postfixExpression).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterPostfixExpression": unexpectedAfterPostfixExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - BinaryOperatorExprSyntax

public struct BinaryOperatorExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .binaryOperatorExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `BinaryOperatorExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .binaryOperatorExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeOperatorToken: UnexpectedNodesSyntax? = nil,
    operatorToken: TokenSyntax,
    _ unexpectedAfterOperatorToken: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeOperatorToken, operatorToken, unexpectedAfterOperatorToken))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeOperatorToken?.raw,
        operatorToken.raw,
        unexpectedAfterOperatorToken?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.binaryOperatorExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeOperatorToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = BinaryOperatorExprSyntax(newData)
    }
  }

  public var operatorToken: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = BinaryOperatorExprSyntax(newData)
    }
  }

  public var unexpectedAfterOperatorToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = BinaryOperatorExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeOperatorToken,
      \Self.operatorToken,
      \Self.unexpectedAfterOperatorToken,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension BinaryOperatorExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeOperatorToken": unexpectedBeforeOperatorToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "operatorToken": Syntax(operatorToken).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterOperatorToken": unexpectedAfterOperatorToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ArrowExprSyntax

public struct ArrowExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .arrowExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ArrowExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .arrowExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeEffectSpecifiers: UnexpectedNodesSyntax? = nil,
    effectSpecifiers: TypeEffectSpecifiersSyntax? = nil,
    _ unexpectedBetweenEffectSpecifiersAndArrowToken: UnexpectedNodesSyntax? = nil,
    arrowToken: TokenSyntax = .arrowToken(),
    _ unexpectedAfterArrowToken: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeEffectSpecifiers, effectSpecifiers, unexpectedBetweenEffectSpecifiersAndArrowToken, arrowToken, unexpectedAfterArrowToken))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeEffectSpecifiers?.raw,
        effectSpecifiers?.raw,
        unexpectedBetweenEffectSpecifiersAndArrowToken?.raw,
        arrowToken.raw,
        unexpectedAfterArrowToken?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.arrowExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeEffectSpecifiers: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = ArrowExprSyntax(newData)
    }
  }

  public var effectSpecifiers: TypeEffectSpecifiersSyntax? {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      if childData == nil { return nil }
      return TypeEffectSpecifiersSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = ArrowExprSyntax(newData)
    }
  }

  public var unexpectedBetweenEffectSpecifiersAndArrowToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = ArrowExprSyntax(newData)
    }
  }

  public var arrowToken: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = ArrowExprSyntax(newData)
    }
  }

  public var unexpectedAfterArrowToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = ArrowExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeEffectSpecifiers,
      \Self.effectSpecifiers,
      \Self.unexpectedBetweenEffectSpecifiersAndArrowToken,
      \Self.arrowToken,
      \Self.unexpectedAfterArrowToken,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ArrowExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeEffectSpecifiers": unexpectedBeforeEffectSpecifiers.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "effectSpecifiers": effectSpecifiers.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenEffectSpecifiersAndArrowToken": unexpectedBetweenEffectSpecifiersAndArrowToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "arrowToken": Syntax(arrowToken).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterArrowToken": unexpectedAfterArrowToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - InfixOperatorExprSyntax

public struct InfixOperatorExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .infixOperatorExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `InfixOperatorExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .infixOperatorExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<L: ExprSyntaxProtocol, O: ExprSyntaxProtocol, R: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeLeftOperand: UnexpectedNodesSyntax? = nil,
    leftOperand: L,
    _ unexpectedBetweenLeftOperandAndOperatorOperand: UnexpectedNodesSyntax? = nil,
    operatorOperand: O,
    _ unexpectedBetweenOperatorOperandAndRightOperand: UnexpectedNodesSyntax? = nil,
    rightOperand: R,
    _ unexpectedAfterRightOperand: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeLeftOperand, leftOperand, unexpectedBetweenLeftOperandAndOperatorOperand, operatorOperand, unexpectedBetweenOperatorOperandAndRightOperand, rightOperand, unexpectedAfterRightOperand))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeLeftOperand?.raw,
        leftOperand.raw,
        unexpectedBetweenLeftOperandAndOperatorOperand?.raw,
        operatorOperand.raw,
        unexpectedBetweenOperatorOperandAndRightOperand?.raw,
        rightOperand.raw,
        unexpectedAfterRightOperand?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.infixOperatorExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeLeftOperand: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public var leftOperand: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftOperandAndOperatorOperand: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public var operatorOperand: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public var unexpectedBetweenOperatorOperandAndRightOperand: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public var rightOperand: ExprSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public var unexpectedAfterRightOperand: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = InfixOperatorExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeLeftOperand,
      \Self.leftOperand,
      \Self.unexpectedBetweenLeftOperandAndOperatorOperand,
      \Self.operatorOperand,
      \Self.unexpectedBetweenOperatorOperandAndRightOperand,
      \Self.rightOperand,
      \Self.unexpectedAfterRightOperand,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension InfixOperatorExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLeftOperand": unexpectedBeforeLeftOperand.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftOperand": Syntax(leftOperand).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftOperandAndOperatorOperand": unexpectedBetweenLeftOperandAndOperatorOperand.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "operatorOperand": Syntax(operatorOperand).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenOperatorOperandAndRightOperand": unexpectedBetweenOperatorOperandAndRightOperand.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightOperand": Syntax(rightOperand).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterRightOperand": unexpectedAfterRightOperand.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - FloatLiteralExprSyntax

public struct FloatLiteralExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .floatLiteralExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `FloatLiteralExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .floatLiteralExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeFloatingDigits: UnexpectedNodesSyntax? = nil,
    floatingDigits: TokenSyntax,
    _ unexpectedAfterFloatingDigits: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeFloatingDigits, floatingDigits, unexpectedAfterFloatingDigits))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeFloatingDigits?.raw,
        floatingDigits.raw,
        unexpectedAfterFloatingDigits?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.floatLiteralExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeFloatingDigits: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = FloatLiteralExprSyntax(newData)
    }
  }

  public var floatingDigits: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = FloatLiteralExprSyntax(newData)
    }
  }

  public var unexpectedAfterFloatingDigits: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = FloatLiteralExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeFloatingDigits,
      \Self.floatingDigits,
      \Self.unexpectedAfterFloatingDigits,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension FloatLiteralExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeFloatingDigits": unexpectedBeforeFloatingDigits.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "floatingDigits": Syntax(floatingDigits).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterFloatingDigits": unexpectedAfterFloatingDigits.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - TupleExprSyntax

public struct TupleExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .tupleExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `TupleExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .tupleExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeLeftParen: UnexpectedNodesSyntax? = nil,
    leftParen: TokenSyntax = .leftParenToken(),
    _ unexpectedBetweenLeftParenAndElementList: UnexpectedNodesSyntax? = nil,
    elementList: TupleExprElementListSyntax,
    _ unexpectedBetweenElementListAndRightParen: UnexpectedNodesSyntax? = nil,
    rightParen: TokenSyntax = .rightParenToken(),
    _ unexpectedAfterRightParen: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeLeftParen, leftParen, unexpectedBetweenLeftParenAndElementList, elementList, unexpectedBetweenElementListAndRightParen, rightParen, unexpectedAfterRightParen))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeLeftParen?.raw,
        leftParen.raw,
        unexpectedBetweenLeftParenAndElementList?.raw,
        elementList.raw,
        unexpectedBetweenElementListAndRightParen?.raw,
        rightParen.raw,
        unexpectedAfterRightParen?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.tupleExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeLeftParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  public var leftParen: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftParenAndElementList: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  public var elementList: TupleExprElementListSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TupleExprElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  /// Adds the provided `Element` to the node's `elementList`
  /// collection.
  /// - param element: The new `Element` to add to the node's
  ///                  `elementList` collection.
  /// - returns: A copy of the receiver with the provided `Element`
  ///            appended to its `elementList` collection.
  public func addElement(_ element: TupleExprElementSyntax) -> TupleExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.tupleExprElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 3, with: collection, arena: arena)
    return TupleExprSyntax(newData)
  }

  public var unexpectedBetweenElementListAndRightParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  public var rightParen: TokenSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  public var unexpectedAfterRightParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = TupleExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeLeftParen,
      \Self.leftParen,
      \Self.unexpectedBetweenLeftParenAndElementList,
      \Self.elementList,
      \Self.unexpectedBetweenElementListAndRightParen,
      \Self.rightParen,
      \Self.unexpectedAfterRightParen,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension TupleExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLeftParen": unexpectedBeforeLeftParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftParen": Syntax(leftParen).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftParenAndElementList": unexpectedBetweenLeftParenAndElementList.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elementList": Syntax(elementList).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenElementListAndRightParen": unexpectedBetweenElementListAndRightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightParen": Syntax(rightParen).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterRightParen": unexpectedAfterRightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ArrayExprSyntax

public struct ArrayExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .arrayExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ArrayExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .arrayExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeLeftSquare: UnexpectedNodesSyntax? = nil,
    leftSquare: TokenSyntax = .leftSquareBracketToken(),
    _ unexpectedBetweenLeftSquareAndElements: UnexpectedNodesSyntax? = nil,
    elements: ArrayElementListSyntax,
    _ unexpectedBetweenElementsAndRightSquare: UnexpectedNodesSyntax? = nil,
    rightSquare: TokenSyntax = .rightSquareBracketToken(),
    _ unexpectedAfterRightSquare: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeLeftSquare, leftSquare, unexpectedBetweenLeftSquareAndElements, elements, unexpectedBetweenElementsAndRightSquare, rightSquare, unexpectedAfterRightSquare))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeLeftSquare?.raw,
        leftSquare.raw,
        unexpectedBetweenLeftSquareAndElements?.raw,
        elements.raw,
        unexpectedBetweenElementsAndRightSquare?.raw,
        rightSquare.raw,
        unexpectedAfterRightSquare?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.arrayExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeLeftSquare: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  public var leftSquare: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftSquareAndElements: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  public var elements: ArrayElementListSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ArrayElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  /// Adds the provided `Element` to the node's `elements`
  /// collection.
  /// - param element: The new `Element` to add to the node's
  ///                  `elements` collection.
  /// - returns: A copy of the receiver with the provided `Element`
  ///            appended to its `elements` collection.
  public func addElement(_ element: ArrayElementSyntax) -> ArrayExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.arrayElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 3, with: collection, arena: arena)
    return ArrayExprSyntax(newData)
  }

  public var unexpectedBetweenElementsAndRightSquare: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  public var rightSquare: TokenSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  public var unexpectedAfterRightSquare: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = ArrayExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeLeftSquare,
      \Self.leftSquare,
      \Self.unexpectedBetweenLeftSquareAndElements,
      \Self.elements,
      \Self.unexpectedBetweenElementsAndRightSquare,
      \Self.rightSquare,
      \Self.unexpectedAfterRightSquare,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ArrayExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLeftSquare": unexpectedBeforeLeftSquare.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftSquare": Syntax(leftSquare).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftSquareAndElements": unexpectedBetweenLeftSquareAndElements.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elements": Syntax(elements).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenElementsAndRightSquare": unexpectedBetweenElementsAndRightSquare.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightSquare": Syntax(rightSquare).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterRightSquare": unexpectedAfterRightSquare.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - DictionaryExprSyntax

public struct DictionaryExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public enum Content: SyntaxChildChoices {
    case `colon`(TokenSyntax)
    case `elements`(DictionaryElementListSyntax)
    public var _syntaxNode: Syntax {
      switch self {
      case .colon(let node): return node._syntaxNode
      case .elements(let node): return node._syntaxNode
      }
    }
    init(_ data: SyntaxData) { self.init(Syntax(data))! }
    public init(_ node: TokenSyntax) {
      self = .colon(node)
    }
    public init(_ node: DictionaryElementListSyntax) {
      self = .elements(node)
    }
    public init?<S: SyntaxProtocol>(_ node: S) {
      if let node = node.as(TokenSyntax.self) {
        self = .colon(node)
        return
      }
      if let node = node.as(DictionaryElementListSyntax.self) {
        self = .elements(node)
        return
      }
      return nil
    }

    public static var structure: SyntaxNodeStructure {
      return .choices([
        .node(TokenSyntax.self),
        .node(DictionaryElementListSyntax.self),
      ])
    }
  }

  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .dictionaryExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `DictionaryExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .dictionaryExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeLeftSquare: UnexpectedNodesSyntax? = nil,
    leftSquare: TokenSyntax = .leftSquareBracketToken(),
    _ unexpectedBetweenLeftSquareAndContent: UnexpectedNodesSyntax? = nil,
    content: Content,
    _ unexpectedBetweenContentAndRightSquare: UnexpectedNodesSyntax? = nil,
    rightSquare: TokenSyntax = .rightSquareBracketToken(),
    _ unexpectedAfterRightSquare: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeLeftSquare, leftSquare, unexpectedBetweenLeftSquareAndContent, content, unexpectedBetweenContentAndRightSquare, rightSquare, unexpectedAfterRightSquare))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeLeftSquare?.raw,
        leftSquare.raw,
        unexpectedBetweenLeftSquareAndContent?.raw,
        content.raw,
        unexpectedBetweenContentAndRightSquare?.raw,
        rightSquare.raw,
        unexpectedAfterRightSquare?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.dictionaryExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeLeftSquare: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public var leftSquare: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftSquareAndContent: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public var content: Content {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return Content(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenContentAndRightSquare: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public var rightSquare: TokenSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public var unexpectedAfterRightSquare: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = DictionaryExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeLeftSquare,
      \Self.leftSquare,
      \Self.unexpectedBetweenLeftSquareAndContent,
      \Self.content,
      \Self.unexpectedBetweenContentAndRightSquare,
      \Self.rightSquare,
      \Self.unexpectedAfterRightSquare,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension DictionaryExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLeftSquare": unexpectedBeforeLeftSquare.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftSquare": Syntax(leftSquare).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftSquareAndContent": unexpectedBetweenLeftSquareAndContent.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "content": Syntax(content).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenContentAndRightSquare": unexpectedBetweenContentAndRightSquare.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightSquare": Syntax(rightSquare).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterRightSquare": unexpectedAfterRightSquare.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - IntegerLiteralExprSyntax

public struct IntegerLiteralExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .integerLiteralExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `IntegerLiteralExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .integerLiteralExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeDigits: UnexpectedNodesSyntax? = nil,
    digits: TokenSyntax,
    _ unexpectedAfterDigits: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeDigits, digits, unexpectedAfterDigits))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeDigits?.raw,
        digits.raw,
        unexpectedAfterDigits?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.integerLiteralExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeDigits: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = IntegerLiteralExprSyntax(newData)
    }
  }

  public var digits: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = IntegerLiteralExprSyntax(newData)
    }
  }

  public var unexpectedAfterDigits: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = IntegerLiteralExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeDigits,
      \Self.digits,
      \Self.unexpectedAfterDigits,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension IntegerLiteralExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeDigits": unexpectedBeforeDigits.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "digits": Syntax(digits).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterDigits": unexpectedAfterDigits.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - BooleanLiteralExprSyntax

public struct BooleanLiteralExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .booleanLiteralExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `BooleanLiteralExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .booleanLiteralExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBooleanLiteral: UnexpectedNodesSyntax? = nil,
    booleanLiteral: TokenSyntax,
    _ unexpectedAfterBooleanLiteral: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeBooleanLiteral, booleanLiteral, unexpectedAfterBooleanLiteral))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeBooleanLiteral?.raw,
        booleanLiteral.raw,
        unexpectedAfterBooleanLiteral?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.booleanLiteralExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeBooleanLiteral: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = BooleanLiteralExprSyntax(newData)
    }
  }

  public var booleanLiteral: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = BooleanLiteralExprSyntax(newData)
    }
  }

  public var unexpectedAfterBooleanLiteral: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = BooleanLiteralExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeBooleanLiteral,
      \Self.booleanLiteral,
      \Self.unexpectedAfterBooleanLiteral,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension BooleanLiteralExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBooleanLiteral": unexpectedBeforeBooleanLiteral.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "booleanLiteral": Syntax(booleanLiteral).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterBooleanLiteral": unexpectedAfterBooleanLiteral.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - UnresolvedTernaryExprSyntax

public struct UnresolvedTernaryExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .unresolvedTernaryExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `UnresolvedTernaryExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .unresolvedTernaryExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<F: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeQuestionMark: UnexpectedNodesSyntax? = nil,
    questionMark: TokenSyntax = .infixQuestionMarkToken(),
    _ unexpectedBetweenQuestionMarkAndFirstChoice: UnexpectedNodesSyntax? = nil,
    firstChoice: F,
    _ unexpectedBetweenFirstChoiceAndColonMark: UnexpectedNodesSyntax? = nil,
    colonMark: TokenSyntax = .colonToken(),
    _ unexpectedAfterColonMark: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeQuestionMark, questionMark, unexpectedBetweenQuestionMarkAndFirstChoice, firstChoice, unexpectedBetweenFirstChoiceAndColonMark, colonMark, unexpectedAfterColonMark))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeQuestionMark?.raw,
        questionMark.raw,
        unexpectedBetweenQuestionMarkAndFirstChoice?.raw,
        firstChoice.raw,
        unexpectedBetweenFirstChoiceAndColonMark?.raw,
        colonMark.raw,
        unexpectedAfterColonMark?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.unresolvedTernaryExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeQuestionMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public var questionMark: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenQuestionMarkAndFirstChoice: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public var firstChoice: ExprSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenFirstChoiceAndColonMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public var colonMark: TokenSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public var unexpectedAfterColonMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = UnresolvedTernaryExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeQuestionMark,
      \Self.questionMark,
      \Self.unexpectedBetweenQuestionMarkAndFirstChoice,
      \Self.firstChoice,
      \Self.unexpectedBetweenFirstChoiceAndColonMark,
      \Self.colonMark,
      \Self.unexpectedAfterColonMark,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension UnresolvedTernaryExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeQuestionMark": unexpectedBeforeQuestionMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "questionMark": Syntax(questionMark).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenQuestionMarkAndFirstChoice": unexpectedBetweenQuestionMarkAndFirstChoice.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "firstChoice": Syntax(firstChoice).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenFirstChoiceAndColonMark": unexpectedBetweenFirstChoiceAndColonMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "colonMark": Syntax(colonMark).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterColonMark": unexpectedAfterColonMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - TernaryExprSyntax

public struct TernaryExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .ternaryExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `TernaryExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .ternaryExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<C: ExprSyntaxProtocol, F: ExprSyntaxProtocol, S: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeConditionExpression: UnexpectedNodesSyntax? = nil,
    conditionExpression: C,
    _ unexpectedBetweenConditionExpressionAndQuestionMark: UnexpectedNodesSyntax? = nil,
    questionMark: TokenSyntax = .infixQuestionMarkToken(),
    _ unexpectedBetweenQuestionMarkAndFirstChoice: UnexpectedNodesSyntax? = nil,
    firstChoice: F,
    _ unexpectedBetweenFirstChoiceAndColonMark: UnexpectedNodesSyntax? = nil,
    colonMark: TokenSyntax = .colonToken(),
    _ unexpectedBetweenColonMarkAndSecondChoice: UnexpectedNodesSyntax? = nil,
    secondChoice: S,
    _ unexpectedAfterSecondChoice: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeConditionExpression, conditionExpression, unexpectedBetweenConditionExpressionAndQuestionMark, questionMark, unexpectedBetweenQuestionMarkAndFirstChoice, firstChoice, unexpectedBetweenFirstChoiceAndColonMark, colonMark, unexpectedBetweenColonMarkAndSecondChoice, secondChoice, unexpectedAfterSecondChoice))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeConditionExpression?.raw,
        conditionExpression.raw,
        unexpectedBetweenConditionExpressionAndQuestionMark?.raw,
        questionMark.raw,
        unexpectedBetweenQuestionMarkAndFirstChoice?.raw,
        firstChoice.raw,
        unexpectedBetweenFirstChoiceAndColonMark?.raw,
        colonMark.raw,
        unexpectedBetweenColonMarkAndSecondChoice?.raw,
        secondChoice.raw,
        unexpectedAfterSecondChoice?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.ternaryExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeConditionExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var conditionExpression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenConditionExpressionAndQuestionMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var questionMark: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenQuestionMarkAndFirstChoice: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var firstChoice: ExprSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenFirstChoiceAndColonMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var colonMark: TokenSyntax {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenColonMarkAndSecondChoice: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var secondChoice: ExprSyntax {
    get {
      let childData = data.child(at: 9, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 9, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public var unexpectedAfterSecondChoice: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 10, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 10, with: raw, arena: arena)
      self = TernaryExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeConditionExpression,
      \Self.conditionExpression,
      \Self.unexpectedBetweenConditionExpressionAndQuestionMark,
      \Self.questionMark,
      \Self.unexpectedBetweenQuestionMarkAndFirstChoice,
      \Self.firstChoice,
      \Self.unexpectedBetweenFirstChoiceAndColonMark,
      \Self.colonMark,
      \Self.unexpectedBetweenColonMarkAndSecondChoice,
      \Self.secondChoice,
      \Self.unexpectedAfterSecondChoice,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return "condition"
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return "first choice"
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    case 9:
      return "second choice"
    case 10:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension TernaryExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeConditionExpression": unexpectedBeforeConditionExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "conditionExpression": Syntax(conditionExpression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionExpressionAndQuestionMark": unexpectedBetweenConditionExpressionAndQuestionMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "questionMark": Syntax(questionMark).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenQuestionMarkAndFirstChoice": unexpectedBetweenQuestionMarkAndFirstChoice.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "firstChoice": Syntax(firstChoice).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenFirstChoiceAndColonMark": unexpectedBetweenFirstChoiceAndColonMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "colonMark": Syntax(colonMark).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenColonMarkAndSecondChoice": unexpectedBetweenColonMarkAndSecondChoice.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "secondChoice": Syntax(secondChoice).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterSecondChoice": unexpectedAfterSecondChoice.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - MemberAccessExprSyntax

public struct MemberAccessExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .memberAccessExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `MemberAccessExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .memberAccessExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<B: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBase: UnexpectedNodesSyntax? = nil,
    base: B? = nil,
    _ unexpectedBetweenBaseAndDot: UnexpectedNodesSyntax? = nil,
    dot: TokenSyntax = .periodToken(),
    _ unexpectedBetweenDotAndName: UnexpectedNodesSyntax? = nil,
    name: TokenSyntax,
    _ unexpectedBetweenNameAndDeclNameArguments: UnexpectedNodesSyntax? = nil,
    declNameArguments: DeclNameArgumentsSyntax? = nil,
    _ unexpectedAfterDeclNameArguments: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeBase, base, unexpectedBetweenBaseAndDot, dot, unexpectedBetweenDotAndName, name, unexpectedBetweenNameAndDeclNameArguments, declNameArguments, unexpectedAfterDeclNameArguments))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeBase?.raw,
        base?.raw,
        unexpectedBetweenBaseAndDot?.raw,
        dot.raw,
        unexpectedBetweenDotAndName?.raw,
        name.raw,
        unexpectedBetweenNameAndDeclNameArguments?.raw,
        declNameArguments?.raw,
        unexpectedAfterDeclNameArguments?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.memberAccessExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  /// This initializer exists solely because Swift 5.6 does not support
  /// `Optional<ConcreteType>.none` as a default value of a generic parameter.
  /// The above initializer thus defaults to `nil` instead, but that means it
  /// is not actually callable when either not passing the defaulted parameter,
  /// or passing `nil`.
  ///
  /// Hack around that limitation using this initializer, which takes a
  /// `Missing*` syntax node instead. `Missing*` is used over the base type as
  /// the base type would allow implicit conversion from a string literal,
  /// which the above initializer doesn't support.
  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBase: UnexpectedNodesSyntax? = nil,
    base: MissingExprSyntax? = nil,
    _ unexpectedBetweenBaseAndDot: UnexpectedNodesSyntax? = nil,
    dot: TokenSyntax = .periodToken(),
    _ unexpectedBetweenDotAndName: UnexpectedNodesSyntax? = nil,
    name: TokenSyntax,
    _ unexpectedBetweenNameAndDeclNameArguments: UnexpectedNodesSyntax? = nil,
    declNameArguments: DeclNameArgumentsSyntax? = nil,
    _ unexpectedAfterDeclNameArguments: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    self.init(
      leadingTrivia: leadingTrivia,
      unexpectedBeforeBase,
      base: Optional<ExprSyntax>.none,
      unexpectedBetweenBaseAndDot,
      dot: dot,
      unexpectedBetweenDotAndName,
      name: name,
      unexpectedBetweenNameAndDeclNameArguments,
      declNameArguments: declNameArguments,
      unexpectedAfterDeclNameArguments,
      trailingTrivia: trailingTrivia
    )
  }

  public var unexpectedBeforeBase: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var base: ExprSyntax? {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      if childData == nil { return nil }
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var unexpectedBetweenBaseAndDot: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var dot: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var unexpectedBetweenDotAndName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var name: TokenSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var unexpectedBetweenNameAndDeclNameArguments: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var declNameArguments: DeclNameArgumentsSyntax? {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      if childData == nil { return nil }
      return DeclNameArgumentsSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public var unexpectedAfterDeclNameArguments: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = MemberAccessExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeBase,
      \Self.base,
      \Self.unexpectedBetweenBaseAndDot,
      \Self.dot,
      \Self.unexpectedBetweenDotAndName,
      \Self.name,
      \Self.unexpectedBetweenNameAndDeclNameArguments,
      \Self.declNameArguments,
      \Self.unexpectedAfterDeclNameArguments,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return "base"
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return "name"
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension MemberAccessExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBase": unexpectedBeforeBase.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "base": base.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenBaseAndDot": unexpectedBetweenBaseAndDot.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "dot": Syntax(dot).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenDotAndName": unexpectedBetweenDotAndName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "name": Syntax(name).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenNameAndDeclNameArguments": unexpectedBetweenNameAndDeclNameArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "declNameArguments": declNameArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterDeclNameArguments": unexpectedAfterDeclNameArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - UnresolvedIsExprSyntax

public struct UnresolvedIsExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .unresolvedIsExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `UnresolvedIsExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .unresolvedIsExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeIsTok: UnexpectedNodesSyntax? = nil,
    isTok: TokenSyntax = .keyword(.is),
    _ unexpectedAfterIsTok: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeIsTok, isTok, unexpectedAfterIsTok))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeIsTok?.raw,
        isTok.raw,
        unexpectedAfterIsTok?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.unresolvedIsExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeIsTok: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = UnresolvedIsExprSyntax(newData)
    }
  }

  public var isTok: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = UnresolvedIsExprSyntax(newData)
    }
  }

  public var unexpectedAfterIsTok: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = UnresolvedIsExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeIsTok,
      \Self.isTok,
      \Self.unexpectedAfterIsTok,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension UnresolvedIsExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeIsTok": unexpectedBeforeIsTok.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "isTok": Syntax(isTok).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterIsTok": unexpectedAfterIsTok.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - IsExprSyntax

public struct IsExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .isExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `IsExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .isExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol, T: TypeSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedBetweenExpressionAndIsTok: UnexpectedNodesSyntax? = nil,
    isTok: TokenSyntax = .keyword(.is),
    _ unexpectedBetweenIsTokAndTypeName: UnexpectedNodesSyntax? = nil,
    typeName: T,
    _ unexpectedAfterTypeName: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedBetweenExpressionAndIsTok, isTok, unexpectedBetweenIsTokAndTypeName, typeName, unexpectedAfterTypeName))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedBetweenExpressionAndIsTok?.raw,
        isTok.raw,
        unexpectedBetweenIsTokAndTypeName?.raw,
        typeName.raw,
        unexpectedAfterTypeName?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.isExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public var unexpectedBetweenExpressionAndIsTok: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public var isTok: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public var unexpectedBetweenIsTokAndTypeName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public var typeName: TypeSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TypeSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public var unexpectedAfterTypeName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = IsExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedBetweenExpressionAndIsTok,
      \Self.isTok,
      \Self.unexpectedBetweenIsTokAndTypeName,
      \Self.typeName,
      \Self.unexpectedAfterTypeName,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension IsExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndIsTok": unexpectedBetweenExpressionAndIsTok.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "isTok": Syntax(isTok).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenIsTokAndTypeName": unexpectedBetweenIsTokAndTypeName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "typeName": Syntax(typeName).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterTypeName": unexpectedAfterTypeName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - UnresolvedAsExprSyntax

public struct UnresolvedAsExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .unresolvedAsExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `UnresolvedAsExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .unresolvedAsExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeAsTok: UnexpectedNodesSyntax? = nil,
    asTok: TokenSyntax = .keyword(.as),
    _ unexpectedBetweenAsTokAndQuestionOrExclamationMark: UnexpectedNodesSyntax? = nil,
    questionOrExclamationMark: TokenSyntax? = nil,
    _ unexpectedAfterQuestionOrExclamationMark: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeAsTok, asTok, unexpectedBetweenAsTokAndQuestionOrExclamationMark, questionOrExclamationMark, unexpectedAfterQuestionOrExclamationMark))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeAsTok?.raw,
        asTok.raw,
        unexpectedBetweenAsTokAndQuestionOrExclamationMark?.raw,
        questionOrExclamationMark?.raw,
        unexpectedAfterQuestionOrExclamationMark?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.unresolvedAsExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeAsTok: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = UnresolvedAsExprSyntax(newData)
    }
  }

  public var asTok: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = UnresolvedAsExprSyntax(newData)
    }
  }

  public var unexpectedBetweenAsTokAndQuestionOrExclamationMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = UnresolvedAsExprSyntax(newData)
    }
  }

  public var questionOrExclamationMark: TokenSyntax? {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = UnresolvedAsExprSyntax(newData)
    }
  }

  public var unexpectedAfterQuestionOrExclamationMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = UnresolvedAsExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeAsTok,
      \Self.asTok,
      \Self.unexpectedBetweenAsTokAndQuestionOrExclamationMark,
      \Self.questionOrExclamationMark,
      \Self.unexpectedAfterQuestionOrExclamationMark,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension UnresolvedAsExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeAsTok": unexpectedBeforeAsTok.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "asTok": Syntax(asTok).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenAsTokAndQuestionOrExclamationMark": unexpectedBetweenAsTokAndQuestionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "questionOrExclamationMark": questionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterQuestionOrExclamationMark": unexpectedAfterQuestionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - AsExprSyntax

public struct AsExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .asExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `AsExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .asExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol, T: TypeSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedBetweenExpressionAndAsTok: UnexpectedNodesSyntax? = nil,
    asTok: TokenSyntax = .keyword(.as),
    _ unexpectedBetweenAsTokAndQuestionOrExclamationMark: UnexpectedNodesSyntax? = nil,
    questionOrExclamationMark: TokenSyntax? = nil,
    _ unexpectedBetweenQuestionOrExclamationMarkAndTypeName: UnexpectedNodesSyntax? = nil,
    typeName: T,
    _ unexpectedAfterTypeName: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedBetweenExpressionAndAsTok, asTok, unexpectedBetweenAsTokAndQuestionOrExclamationMark, questionOrExclamationMark, unexpectedBetweenQuestionOrExclamationMarkAndTypeName, typeName, unexpectedAfterTypeName))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedBetweenExpressionAndAsTok?.raw,
        asTok.raw,
        unexpectedBetweenAsTokAndQuestionOrExclamationMark?.raw,
        questionOrExclamationMark?.raw,
        unexpectedBetweenQuestionOrExclamationMarkAndTypeName?.raw,
        typeName.raw,
        unexpectedAfterTypeName?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.asExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var unexpectedBetweenExpressionAndAsTok: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var asTok: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var unexpectedBetweenAsTokAndQuestionOrExclamationMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var questionOrExclamationMark: TokenSyntax? {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var unexpectedBetweenQuestionOrExclamationMarkAndTypeName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var typeName: TypeSyntax {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      return TypeSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public var unexpectedAfterTypeName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = AsExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedBetweenExpressionAndAsTok,
      \Self.asTok,
      \Self.unexpectedBetweenAsTokAndQuestionOrExclamationMark,
      \Self.questionOrExclamationMark,
      \Self.unexpectedBetweenQuestionOrExclamationMarkAndTypeName,
      \Self.typeName,
      \Self.unexpectedAfterTypeName,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension AsExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndAsTok": unexpectedBetweenExpressionAndAsTok.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "asTok": Syntax(asTok).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenAsTokAndQuestionOrExclamationMark": unexpectedBetweenAsTokAndQuestionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "questionOrExclamationMark": questionOrExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenQuestionOrExclamationMarkAndTypeName": unexpectedBetweenQuestionOrExclamationMarkAndTypeName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "typeName": Syntax(typeName).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterTypeName": unexpectedAfterTypeName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - TypeExprSyntax

public struct TypeExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .typeExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `TypeExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .typeExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<T: TypeSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeType: UnexpectedNodesSyntax? = nil,
    type: T,
    _ unexpectedAfterType: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeType, type, unexpectedAfterType))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeType?.raw,
        type.raw,
        unexpectedAfterType?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.typeExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeType: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = TypeExprSyntax(newData)
    }
  }

  public var type: TypeSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TypeSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = TypeExprSyntax(newData)
    }
  }

  public var unexpectedAfterType: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = TypeExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeType,
      \Self.type,
      \Self.unexpectedAfterType,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension TypeExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeType": unexpectedBeforeType.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "type": Syntax(type).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterType": unexpectedAfterType.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ClosureExprSyntax

public struct ClosureExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .closureExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ClosureExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .closureExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeLeftBrace: UnexpectedNodesSyntax? = nil,
    leftBrace: TokenSyntax = .leftBraceToken(),
    _ unexpectedBetweenLeftBraceAndSignature: UnexpectedNodesSyntax? = nil,
    signature: ClosureSignatureSyntax? = nil,
    _ unexpectedBetweenSignatureAndStatements: UnexpectedNodesSyntax? = nil,
    statements: CodeBlockItemListSyntax,
    _ unexpectedBetweenStatementsAndRightBrace: UnexpectedNodesSyntax? = nil,
    rightBrace: TokenSyntax = .rightBraceToken(),
    _ unexpectedAfterRightBrace: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeLeftBrace, leftBrace, unexpectedBetweenLeftBraceAndSignature, signature, unexpectedBetweenSignatureAndStatements, statements, unexpectedBetweenStatementsAndRightBrace, rightBrace, unexpectedAfterRightBrace))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeLeftBrace?.raw,
        leftBrace.raw,
        unexpectedBetweenLeftBraceAndSignature?.raw,
        signature?.raw,
        unexpectedBetweenSignatureAndStatements?.raw,
        statements.raw,
        unexpectedBetweenStatementsAndRightBrace?.raw,
        rightBrace.raw,
        unexpectedAfterRightBrace?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.closureExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeLeftBrace: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var leftBrace: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftBraceAndSignature: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var signature: ClosureSignatureSyntax? {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      if childData == nil { return nil }
      return ClosureSignatureSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var unexpectedBetweenSignatureAndStatements: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var statements: CodeBlockItemListSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return CodeBlockItemListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  /// Adds the provided `Statement` to the node's `statements`
  /// collection.
  /// - param element: The new `Statement` to add to the node's
  ///                  `statements` collection.
  /// - returns: A copy of the receiver with the provided `Statement`
  ///            appended to its `statements` collection.
  public func addStatement(_ element: CodeBlockItemSyntax) -> ClosureExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.codeBlockItemList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 5, with: collection, arena: arena)
    return ClosureExprSyntax(newData)
  }

  public var unexpectedBetweenStatementsAndRightBrace: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var rightBrace: TokenSyntax {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public var unexpectedAfterRightBrace: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = ClosureExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeLeftBrace,
      \Self.leftBrace,
      \Self.unexpectedBetweenLeftBraceAndSignature,
      \Self.signature,
      \Self.unexpectedBetweenSignatureAndStatements,
      \Self.statements,
      \Self.unexpectedBetweenStatementsAndRightBrace,
      \Self.rightBrace,
      \Self.unexpectedAfterRightBrace,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ClosureExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLeftBrace": unexpectedBeforeLeftBrace.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftBrace": Syntax(leftBrace).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftBraceAndSignature": unexpectedBetweenLeftBraceAndSignature.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "signature": signature.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenSignatureAndStatements": unexpectedBetweenSignatureAndStatements.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "statements": Syntax(statements).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenStatementsAndRightBrace": unexpectedBetweenStatementsAndRightBrace.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightBrace": Syntax(rightBrace).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterRightBrace": unexpectedAfterRightBrace.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - UnresolvedPatternExprSyntax

public struct UnresolvedPatternExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .unresolvedPatternExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `UnresolvedPatternExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .unresolvedPatternExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<P: PatternSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforePattern: UnexpectedNodesSyntax? = nil,
    pattern: P,
    _ unexpectedAfterPattern: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforePattern, pattern, unexpectedAfterPattern))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforePattern?.raw,
        pattern.raw,
        unexpectedAfterPattern?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.unresolvedPatternExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforePattern: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = UnresolvedPatternExprSyntax(newData)
    }
  }

  public var pattern: PatternSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return PatternSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = UnresolvedPatternExprSyntax(newData)
    }
  }

  public var unexpectedAfterPattern: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = UnresolvedPatternExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforePattern,
      \Self.pattern,
      \Self.unexpectedAfterPattern,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension UnresolvedPatternExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforePattern": unexpectedBeforePattern.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "pattern": Syntax(pattern).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterPattern": unexpectedAfterPattern.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - FunctionCallExprSyntax

public struct FunctionCallExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .functionCallExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `FunctionCallExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .functionCallExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<C: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeCalledExpression: UnexpectedNodesSyntax? = nil,
    calledExpression: C,
    _ unexpectedBetweenCalledExpressionAndLeftParen: UnexpectedNodesSyntax? = nil,
    leftParen: TokenSyntax? = nil,
    _ unexpectedBetweenLeftParenAndArgumentList: UnexpectedNodesSyntax? = nil,
    argumentList: TupleExprElementListSyntax,
    _ unexpectedBetweenArgumentListAndRightParen: UnexpectedNodesSyntax? = nil,
    rightParen: TokenSyntax? = nil,
    _ unexpectedBetweenRightParenAndTrailingClosure: UnexpectedNodesSyntax? = nil,
    trailingClosure: ClosureExprSyntax? = nil,
    _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
    additionalTrailingClosures: MultipleTrailingClosureElementListSyntax? = nil,
    _ unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeCalledExpression, calledExpression, unexpectedBetweenCalledExpressionAndLeftParen, leftParen, unexpectedBetweenLeftParenAndArgumentList, argumentList, unexpectedBetweenArgumentListAndRightParen, rightParen, unexpectedBetweenRightParenAndTrailingClosure, trailingClosure, unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures, additionalTrailingClosures, unexpectedAfterAdditionalTrailingClosures))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeCalledExpression?.raw,
        calledExpression.raw,
        unexpectedBetweenCalledExpressionAndLeftParen?.raw,
        leftParen?.raw,
        unexpectedBetweenLeftParenAndArgumentList?.raw,
        argumentList.raw,
        unexpectedBetweenArgumentListAndRightParen?.raw,
        rightParen?.raw,
        unexpectedBetweenRightParenAndTrailingClosure?.raw,
        trailingClosure?.raw,
        unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw,
        additionalTrailingClosures?.raw,
        unexpectedAfterAdditionalTrailingClosures?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.functionCallExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeCalledExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var calledExpression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var unexpectedBetweenCalledExpressionAndLeftParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var leftParen: TokenSyntax? {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftParenAndArgumentList: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var argumentList: TupleExprElementListSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TupleExprElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  /// Adds the provided `Argument` to the node's `argumentList`
  /// collection.
  /// - param element: The new `Argument` to add to the node's
  ///                  `argumentList` collection.
  /// - returns: A copy of the receiver with the provided `Argument`
  ///            appended to its `argumentList` collection.
  public func addArgument(_ element: TupleExprElementSyntax) -> FunctionCallExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.tupleExprElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 5, with: collection, arena: arena)
    return FunctionCallExprSyntax(newData)
  }

  public var unexpectedBetweenArgumentListAndRightParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var rightParen: TokenSyntax? {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var unexpectedBetweenRightParenAndTrailingClosure: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var trailingClosure: ClosureExprSyntax? {
    get {
      let childData = data.child(at: 9, parent: Syntax(self))
      if childData == nil { return nil }
      return ClosureExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 9, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 10, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 10, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public var additionalTrailingClosures: MultipleTrailingClosureElementListSyntax? {
    get {
      let childData = data.child(at: 11, parent: Syntax(self))
      if childData == nil { return nil }
      return MultipleTrailingClosureElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 11, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  /// Adds the provided `AdditionalTrailingClosure` to the node's `additionalTrailingClosures`
  /// collection.
  /// - param element: The new `AdditionalTrailingClosure` to add to the node's
  ///                  `additionalTrailingClosures` collection.
  /// - returns: A copy of the receiver with the provided `AdditionalTrailingClosure`
  ///            appended to its `additionalTrailingClosures` collection.
  public func addAdditionalTrailingClosure(_ element: MultipleTrailingClosureElementSyntax) -> FunctionCallExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[11] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.multipleTrailingClosureElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 11, with: collection, arena: arena)
    return FunctionCallExprSyntax(newData)
  }

  public var unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 12, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 12, with: raw, arena: arena)
      self = FunctionCallExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeCalledExpression,
      \Self.calledExpression,
      \Self.unexpectedBetweenCalledExpressionAndLeftParen,
      \Self.leftParen,
      \Self.unexpectedBetweenLeftParenAndArgumentList,
      \Self.argumentList,
      \Self.unexpectedBetweenArgumentListAndRightParen,
      \Self.rightParen,
      \Self.unexpectedBetweenRightParenAndTrailingClosure,
      \Self.trailingClosure,
      \Self.unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures,
      \Self.additionalTrailingClosures,
      \Self.unexpectedAfterAdditionalTrailingClosures,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return "called expression"
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return "arguments"
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    case 9:
      return "trailing closure"
    case 10:
      return nil
    case 11:
      return "trailing closures"
    case 12:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension FunctionCallExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeCalledExpression": unexpectedBeforeCalledExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "calledExpression": Syntax(calledExpression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenCalledExpressionAndLeftParen": unexpectedBetweenCalledExpressionAndLeftParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftParen": leftParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenLeftParenAndArgumentList": unexpectedBetweenLeftParenAndArgumentList.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "argumentList": Syntax(argumentList).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenArgumentListAndRightParen": unexpectedBetweenArgumentListAndRightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightParen": rightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenRightParenAndTrailingClosure": unexpectedBetweenRightParenAndTrailingClosure.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "trailingClosure": trailingClosure.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures": unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "additionalTrailingClosures": additionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterAdditionalTrailingClosures": unexpectedAfterAdditionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - SubscriptExprSyntax

public struct SubscriptExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .subscriptExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `SubscriptExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .subscriptExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<C: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeCalledExpression: UnexpectedNodesSyntax? = nil,
    calledExpression: C,
    _ unexpectedBetweenCalledExpressionAndLeftBracket: UnexpectedNodesSyntax? = nil,
    leftBracket: TokenSyntax = .leftSquareBracketToken(),
    _ unexpectedBetweenLeftBracketAndArgumentList: UnexpectedNodesSyntax? = nil,
    argumentList: TupleExprElementListSyntax,
    _ unexpectedBetweenArgumentListAndRightBracket: UnexpectedNodesSyntax? = nil,
    rightBracket: TokenSyntax = .rightSquareBracketToken(),
    _ unexpectedBetweenRightBracketAndTrailingClosure: UnexpectedNodesSyntax? = nil,
    trailingClosure: ClosureExprSyntax? = nil,
    _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
    additionalTrailingClosures: MultipleTrailingClosureElementListSyntax? = nil,
    _ unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeCalledExpression, calledExpression, unexpectedBetweenCalledExpressionAndLeftBracket, leftBracket, unexpectedBetweenLeftBracketAndArgumentList, argumentList, unexpectedBetweenArgumentListAndRightBracket, rightBracket, unexpectedBetweenRightBracketAndTrailingClosure, trailingClosure, unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures, additionalTrailingClosures, unexpectedAfterAdditionalTrailingClosures))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeCalledExpression?.raw,
        calledExpression.raw,
        unexpectedBetweenCalledExpressionAndLeftBracket?.raw,
        leftBracket.raw,
        unexpectedBetweenLeftBracketAndArgumentList?.raw,
        argumentList.raw,
        unexpectedBetweenArgumentListAndRightBracket?.raw,
        rightBracket.raw,
        unexpectedBetweenRightBracketAndTrailingClosure?.raw,
        trailingClosure?.raw,
        unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw,
        additionalTrailingClosures?.raw,
        unexpectedAfterAdditionalTrailingClosures?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.subscriptExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeCalledExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var calledExpression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var unexpectedBetweenCalledExpressionAndLeftBracket: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var leftBracket: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftBracketAndArgumentList: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var argumentList: TupleExprElementListSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TupleExprElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  /// Adds the provided `Argument` to the node's `argumentList`
  /// collection.
  /// - param element: The new `Argument` to add to the node's
  ///                  `argumentList` collection.
  /// - returns: A copy of the receiver with the provided `Argument`
  ///            appended to its `argumentList` collection.
  public func addArgument(_ element: TupleExprElementSyntax) -> SubscriptExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.tupleExprElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 5, with: collection, arena: arena)
    return SubscriptExprSyntax(newData)
  }

  public var unexpectedBetweenArgumentListAndRightBracket: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var rightBracket: TokenSyntax {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var unexpectedBetweenRightBracketAndTrailingClosure: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var trailingClosure: ClosureExprSyntax? {
    get {
      let childData = data.child(at: 9, parent: Syntax(self))
      if childData == nil { return nil }
      return ClosureExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 9, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 10, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 10, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public var additionalTrailingClosures: MultipleTrailingClosureElementListSyntax? {
    get {
      let childData = data.child(at: 11, parent: Syntax(self))
      if childData == nil { return nil }
      return MultipleTrailingClosureElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 11, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  /// Adds the provided `AdditionalTrailingClosure` to the node's `additionalTrailingClosures`
  /// collection.
  /// - param element: The new `AdditionalTrailingClosure` to add to the node's
  ///                  `additionalTrailingClosures` collection.
  /// - returns: A copy of the receiver with the provided `AdditionalTrailingClosure`
  ///            appended to its `additionalTrailingClosures` collection.
  public func addAdditionalTrailingClosure(_ element: MultipleTrailingClosureElementSyntax) -> SubscriptExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[11] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.multipleTrailingClosureElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 11, with: collection, arena: arena)
    return SubscriptExprSyntax(newData)
  }

  public var unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 12, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 12, with: raw, arena: arena)
      self = SubscriptExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeCalledExpression,
      \Self.calledExpression,
      \Self.unexpectedBetweenCalledExpressionAndLeftBracket,
      \Self.leftBracket,
      \Self.unexpectedBetweenLeftBracketAndArgumentList,
      \Self.argumentList,
      \Self.unexpectedBetweenArgumentListAndRightBracket,
      \Self.rightBracket,
      \Self.unexpectedBetweenRightBracketAndTrailingClosure,
      \Self.trailingClosure,
      \Self.unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures,
      \Self.additionalTrailingClosures,
      \Self.unexpectedAfterAdditionalTrailingClosures,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return "called expression"
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return "arguments"
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    case 9:
      return "trailing closure"
    case 10:
      return nil
    case 11:
      return "trailing closures"
    case 12:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension SubscriptExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeCalledExpression": unexpectedBeforeCalledExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "calledExpression": Syntax(calledExpression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenCalledExpressionAndLeftBracket": unexpectedBetweenCalledExpressionAndLeftBracket.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftBracket": Syntax(leftBracket).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftBracketAndArgumentList": unexpectedBetweenLeftBracketAndArgumentList.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "argumentList": Syntax(argumentList).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenArgumentListAndRightBracket": unexpectedBetweenArgumentListAndRightBracket.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightBracket": Syntax(rightBracket).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenRightBracketAndTrailingClosure": unexpectedBetweenRightBracketAndTrailingClosure.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "trailingClosure": trailingClosure.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures": unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "additionalTrailingClosures": additionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterAdditionalTrailingClosures": unexpectedAfterAdditionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - OptionalChainingExprSyntax

public struct OptionalChainingExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .optionalChainingExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `OptionalChainingExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .optionalChainingExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedBetweenExpressionAndQuestionMark: UnexpectedNodesSyntax? = nil,
    questionMark: TokenSyntax = .postfixQuestionMarkToken(),
    _ unexpectedAfterQuestionMark: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedBetweenExpressionAndQuestionMark, questionMark, unexpectedAfterQuestionMark))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedBetweenExpressionAndQuestionMark?.raw,
        questionMark.raw,
        unexpectedAfterQuestionMark?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.optionalChainingExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = OptionalChainingExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = OptionalChainingExprSyntax(newData)
    }
  }

  public var unexpectedBetweenExpressionAndQuestionMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = OptionalChainingExprSyntax(newData)
    }
  }

  public var questionMark: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = OptionalChainingExprSyntax(newData)
    }
  }

  public var unexpectedAfterQuestionMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = OptionalChainingExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedBetweenExpressionAndQuestionMark,
      \Self.questionMark,
      \Self.unexpectedAfterQuestionMark,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension OptionalChainingExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndQuestionMark": unexpectedBetweenExpressionAndQuestionMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "questionMark": Syntax(questionMark).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterQuestionMark": unexpectedAfterQuestionMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ForcedValueExprSyntax

public struct ForcedValueExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .forcedValueExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `ForcedValueExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .forcedValueExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedBetweenExpressionAndExclamationMark: UnexpectedNodesSyntax? = nil,
    exclamationMark: TokenSyntax = .exclamationMarkToken(),
    _ unexpectedAfterExclamationMark: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedBetweenExpressionAndExclamationMark, exclamationMark, unexpectedAfterExclamationMark))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedBetweenExpressionAndExclamationMark?.raw,
        exclamationMark.raw,
        unexpectedAfterExclamationMark?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.forcedValueExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = ForcedValueExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = ForcedValueExprSyntax(newData)
    }
  }

  public var unexpectedBetweenExpressionAndExclamationMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = ForcedValueExprSyntax(newData)
    }
  }

  public var exclamationMark: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = ForcedValueExprSyntax(newData)
    }
  }

  public var unexpectedAfterExclamationMark: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = ForcedValueExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedBetweenExpressionAndExclamationMark,
      \Self.exclamationMark,
      \Self.unexpectedAfterExclamationMark,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension ForcedValueExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndExclamationMark": unexpectedBetweenExpressionAndExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "exclamationMark": Syntax(exclamationMark).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterExclamationMark": unexpectedAfterExclamationMark.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - PostfixUnaryExprSyntax

public struct PostfixUnaryExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .postfixUnaryExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `PostfixUnaryExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .postfixUnaryExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedBetweenExpressionAndOperatorToken: UnexpectedNodesSyntax? = nil,
    operatorToken: TokenSyntax,
    _ unexpectedAfterOperatorToken: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedBetweenExpressionAndOperatorToken, operatorToken, unexpectedAfterOperatorToken))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedBetweenExpressionAndOperatorToken?.raw,
        operatorToken.raw,
        unexpectedAfterOperatorToken?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.postfixUnaryExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = PostfixUnaryExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = PostfixUnaryExprSyntax(newData)
    }
  }

  public var unexpectedBetweenExpressionAndOperatorToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = PostfixUnaryExprSyntax(newData)
    }
  }

  public var operatorToken: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = PostfixUnaryExprSyntax(newData)
    }
  }

  public var unexpectedAfterOperatorToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = PostfixUnaryExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedBetweenExpressionAndOperatorToken,
      \Self.operatorToken,
      \Self.unexpectedAfterOperatorToken,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension PostfixUnaryExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndOperatorToken": unexpectedBetweenExpressionAndOperatorToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "operatorToken": Syntax(operatorToken).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterOperatorToken": unexpectedAfterOperatorToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - SpecializeExprSyntax

public struct SpecializeExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .specializeExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `SpecializeExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .specializeExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<E: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: E,
    _ unexpectedBetweenExpressionAndGenericArgumentClause: UnexpectedNodesSyntax? = nil,
    genericArgumentClause: GenericArgumentClauseSyntax,
    _ unexpectedAfterGenericArgumentClause: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedBetweenExpressionAndGenericArgumentClause, genericArgumentClause, unexpectedAfterGenericArgumentClause))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeExpression?.raw,
        expression.raw,
        unexpectedBetweenExpressionAndGenericArgumentClause?.raw,
        genericArgumentClause.raw,
        unexpectedAfterGenericArgumentClause?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.specializeExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = SpecializeExprSyntax(newData)
    }
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = SpecializeExprSyntax(newData)
    }
  }

  public var unexpectedBetweenExpressionAndGenericArgumentClause: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = SpecializeExprSyntax(newData)
    }
  }

  public var genericArgumentClause: GenericArgumentClauseSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return GenericArgumentClauseSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = SpecializeExprSyntax(newData)
    }
  }

  public var unexpectedAfterGenericArgumentClause: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = SpecializeExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeExpression,
      \Self.expression,
      \Self.unexpectedBetweenExpressionAndGenericArgumentClause,
      \Self.genericArgumentClause,
      \Self.unexpectedAfterGenericArgumentClause,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension SpecializeExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndGenericArgumentClause": unexpectedBetweenExpressionAndGenericArgumentClause.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "genericArgumentClause": Syntax(genericArgumentClause).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterGenericArgumentClause": unexpectedAfterGenericArgumentClause.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - StringLiteralExprSyntax

public struct StringLiteralExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .stringLiteralExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `StringLiteralExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .stringLiteralExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeOpenDelimiter: UnexpectedNodesSyntax? = nil,
    openDelimiter: TokenSyntax? = nil,
    _ unexpectedBetweenOpenDelimiterAndOpenQuote: UnexpectedNodesSyntax? = nil,
    openQuote: TokenSyntax,
    _ unexpectedBetweenOpenQuoteAndSegments: UnexpectedNodesSyntax? = nil,
    segments: StringLiteralSegmentsSyntax,
    _ unexpectedBetweenSegmentsAndCloseQuote: UnexpectedNodesSyntax? = nil,
    closeQuote: TokenSyntax,
    _ unexpectedBetweenCloseQuoteAndCloseDelimiter: UnexpectedNodesSyntax? = nil,
    closeDelimiter: TokenSyntax? = nil,
    _ unexpectedAfterCloseDelimiter: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeOpenDelimiter, openDelimiter, unexpectedBetweenOpenDelimiterAndOpenQuote, openQuote, unexpectedBetweenOpenQuoteAndSegments, segments, unexpectedBetweenSegmentsAndCloseQuote, closeQuote, unexpectedBetweenCloseQuoteAndCloseDelimiter, closeDelimiter, unexpectedAfterCloseDelimiter))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeOpenDelimiter?.raw,
        openDelimiter?.raw,
        unexpectedBetweenOpenDelimiterAndOpenQuote?.raw,
        openQuote.raw,
        unexpectedBetweenOpenQuoteAndSegments?.raw,
        segments.raw,
        unexpectedBetweenSegmentsAndCloseQuote?.raw,
        closeQuote.raw,
        unexpectedBetweenCloseQuoteAndCloseDelimiter?.raw,
        closeDelimiter?.raw,
        unexpectedAfterCloseDelimiter?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.stringLiteralExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeOpenDelimiter: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var openDelimiter: TokenSyntax? {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var unexpectedBetweenOpenDelimiterAndOpenQuote: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var openQuote: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var unexpectedBetweenOpenQuoteAndSegments: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var segments: StringLiteralSegmentsSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return StringLiteralSegmentsSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  /// Adds the provided `Segment` to the node's `segments`
  /// collection.
  /// - param element: The new `Segment` to add to the node's
  ///                  `segments` collection.
  /// - returns: A copy of the receiver with the provided `Segment`
  ///            appended to its `segments` collection.
  public func addSegment(_ element: Syntax) -> StringLiteralExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.stringLiteralSegments,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 5, with: collection, arena: arena)
    return StringLiteralExprSyntax(newData)
  }

  public var unexpectedBetweenSegmentsAndCloseQuote: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var closeQuote: TokenSyntax {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var unexpectedBetweenCloseQuoteAndCloseDelimiter: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var closeDelimiter: TokenSyntax? {
    get {
      let childData = data.child(at: 9, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 9, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public var unexpectedAfterCloseDelimiter: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 10, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 10, with: raw, arena: arena)
      self = StringLiteralExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeOpenDelimiter,
      \Self.openDelimiter,
      \Self.unexpectedBetweenOpenDelimiterAndOpenQuote,
      \Self.openQuote,
      \Self.unexpectedBetweenOpenQuoteAndSegments,
      \Self.segments,
      \Self.unexpectedBetweenSegmentsAndCloseQuote,
      \Self.closeQuote,
      \Self.unexpectedBetweenCloseQuoteAndCloseDelimiter,
      \Self.closeDelimiter,
      \Self.unexpectedAfterCloseDelimiter,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    case 9:
      return nil
    case 10:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension StringLiteralExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeOpenDelimiter": unexpectedBeforeOpenDelimiter.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "openDelimiter": openDelimiter.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenOpenDelimiterAndOpenQuote": unexpectedBetweenOpenDelimiterAndOpenQuote.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "openQuote": Syntax(openQuote).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenOpenQuoteAndSegments": unexpectedBetweenOpenQuoteAndSegments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "segments": Syntax(segments).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenSegmentsAndCloseQuote": unexpectedBetweenSegmentsAndCloseQuote.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "closeQuote": Syntax(closeQuote).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenCloseQuoteAndCloseDelimiter": unexpectedBetweenCloseQuoteAndCloseDelimiter.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "closeDelimiter": closeDelimiter.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterCloseDelimiter": unexpectedAfterCloseDelimiter.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - RegexLiteralExprSyntax

public struct RegexLiteralExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .regexLiteralExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `RegexLiteralExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .regexLiteralExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeRegex: UnexpectedNodesSyntax? = nil,
    regex: TokenSyntax,
    _ unexpectedAfterRegex: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeRegex, regex, unexpectedAfterRegex))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeRegex?.raw,
        regex.raw,
        unexpectedAfterRegex?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.regexLiteralExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeRegex: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = RegexLiteralExprSyntax(newData)
    }
  }

  public var regex: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = RegexLiteralExprSyntax(newData)
    }
  }

  public var unexpectedAfterRegex: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = RegexLiteralExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeRegex,
      \Self.regex,
      \Self.unexpectedAfterRegex,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension RegexLiteralExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeRegex": unexpectedBeforeRegex.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "regex": Syntax(regex).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterRegex": unexpectedAfterRegex.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - KeyPathExprSyntax

public struct KeyPathExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .keyPathExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `KeyPathExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .keyPathExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<R: TypeSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBackslash: UnexpectedNodesSyntax? = nil,
    backslash: TokenSyntax = .backslashToken(),
    _ unexpectedBetweenBackslashAndRoot: UnexpectedNodesSyntax? = nil,
    root: R? = nil,
    _ unexpectedBetweenRootAndComponents: UnexpectedNodesSyntax? = nil,
    components: KeyPathComponentListSyntax,
    _ unexpectedAfterComponents: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeBackslash, backslash, unexpectedBetweenBackslashAndRoot, root, unexpectedBetweenRootAndComponents, components, unexpectedAfterComponents))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeBackslash?.raw,
        backslash.raw,
        unexpectedBetweenBackslashAndRoot?.raw,
        root?.raw,
        unexpectedBetweenRootAndComponents?.raw,
        components.raw,
        unexpectedAfterComponents?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.keyPathExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  /// This initializer exists solely because Swift 5.6 does not support
  /// `Optional<ConcreteType>.none` as a default value of a generic parameter.
  /// The above initializer thus defaults to `nil` instead, but that means it
  /// is not actually callable when either not passing the defaulted parameter,
  /// or passing `nil`.
  ///
  /// Hack around that limitation using this initializer, which takes a
  /// `Missing*` syntax node instead. `Missing*` is used over the base type as
  /// the base type would allow implicit conversion from a string literal,
  /// which the above initializer doesn't support.
  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBackslash: UnexpectedNodesSyntax? = nil,
    backslash: TokenSyntax = .backslashToken(),
    _ unexpectedBetweenBackslashAndRoot: UnexpectedNodesSyntax? = nil,
    root: MissingTypeSyntax? = nil,
    _ unexpectedBetweenRootAndComponents: UnexpectedNodesSyntax? = nil,
    components: KeyPathComponentListSyntax,
    _ unexpectedAfterComponents: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    self.init(
      leadingTrivia: leadingTrivia,
      unexpectedBeforeBackslash,
      backslash: backslash,
      unexpectedBetweenBackslashAndRoot,
      root: Optional<TypeSyntax>.none,
      unexpectedBetweenRootAndComponents,
      components: components,
      unexpectedAfterComponents,
      trailingTrivia: trailingTrivia
    )
  }

  public var unexpectedBeforeBackslash: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  public var backslash: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  public var unexpectedBetweenBackslashAndRoot: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  public var root: TypeSyntax? {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      if childData == nil { return nil }
      return TypeSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  public var unexpectedBetweenRootAndComponents: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  public var components: KeyPathComponentListSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return KeyPathComponentListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  /// Adds the provided `KeyPathComponent` to the node's `components`
  /// collection.
  /// - param element: The new `KeyPathComponent` to add to the node's
  ///                  `components` collection.
  /// - returns: A copy of the receiver with the provided `KeyPathComponent`
  ///            appended to its `components` collection.
  public func addKeyPathComponent(_ element: KeyPathComponentSyntax) -> KeyPathExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.keyPathComponentList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 5, with: collection, arena: arena)
    return KeyPathExprSyntax(newData)
  }

  public var unexpectedAfterComponents: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = KeyPathExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeBackslash,
      \Self.backslash,
      \Self.unexpectedBetweenBackslashAndRoot,
      \Self.root,
      \Self.unexpectedBetweenRootAndComponents,
      \Self.components,
      \Self.unexpectedAfterComponents,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return "root"
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension KeyPathExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBackslash": unexpectedBeforeBackslash.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "backslash": Syntax(backslash).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBackslashAndRoot": unexpectedBetweenBackslashAndRoot.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "root": root.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenRootAndComponents": unexpectedBetweenRootAndComponents.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "components": Syntax(components).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterComponents": unexpectedAfterComponents.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - MacroExpansionExprSyntax

public struct MacroExpansionExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .macroExpansionExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `MacroExpansionExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .macroExpansionExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforePoundToken: UnexpectedNodesSyntax? = nil,
    poundToken: TokenSyntax = .poundToken(),
    _ unexpectedBetweenPoundTokenAndMacro: UnexpectedNodesSyntax? = nil,
    macro: TokenSyntax,
    _ unexpectedBetweenMacroAndGenericArguments: UnexpectedNodesSyntax? = nil,
    genericArguments: GenericArgumentClauseSyntax? = nil,
    _ unexpectedBetweenGenericArgumentsAndLeftParen: UnexpectedNodesSyntax? = nil,
    leftParen: TokenSyntax? = nil,
    _ unexpectedBetweenLeftParenAndArgumentList: UnexpectedNodesSyntax? = nil,
    argumentList: TupleExprElementListSyntax,
    _ unexpectedBetweenArgumentListAndRightParen: UnexpectedNodesSyntax? = nil,
    rightParen: TokenSyntax? = nil,
    _ unexpectedBetweenRightParenAndTrailingClosure: UnexpectedNodesSyntax? = nil,
    trailingClosure: ClosureExprSyntax? = nil,
    _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
    additionalTrailingClosures: MultipleTrailingClosureElementListSyntax? = nil,
    _ unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforePoundToken, poundToken, unexpectedBetweenPoundTokenAndMacro, macro, unexpectedBetweenMacroAndGenericArguments, genericArguments, unexpectedBetweenGenericArgumentsAndLeftParen, leftParen, unexpectedBetweenLeftParenAndArgumentList, argumentList, unexpectedBetweenArgumentListAndRightParen, rightParen, unexpectedBetweenRightParenAndTrailingClosure, trailingClosure, unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures, additionalTrailingClosures, unexpectedAfterAdditionalTrailingClosures))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforePoundToken?.raw,
        poundToken.raw,
        unexpectedBetweenPoundTokenAndMacro?.raw,
        macro.raw,
        unexpectedBetweenMacroAndGenericArguments?.raw,
        genericArguments?.raw,
        unexpectedBetweenGenericArgumentsAndLeftParen?.raw,
        leftParen?.raw,
        unexpectedBetweenLeftParenAndArgumentList?.raw,
        argumentList.raw,
        unexpectedBetweenArgumentListAndRightParen?.raw,
        rightParen?.raw,
        unexpectedBetweenRightParenAndTrailingClosure?.raw,
        trailingClosure?.raw,
        unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw,
        additionalTrailingClosures?.raw,
        unexpectedAfterAdditionalTrailingClosures?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.macroExpansionExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforePoundToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  /// The `#` sign.
  public var poundToken: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var unexpectedBetweenPoundTokenAndMacro: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var macro: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var unexpectedBetweenMacroAndGenericArguments: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var genericArguments: GenericArgumentClauseSyntax? {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      if childData == nil { return nil }
      return GenericArgumentClauseSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 5, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var unexpectedBetweenGenericArgumentsAndLeftParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 6, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var leftParen: TokenSyntax? {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 7, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var unexpectedBetweenLeftParenAndArgumentList: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 8, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var argumentList: TupleExprElementListSyntax {
    get {
      let childData = data.child(at: 9, parent: Syntax(self))
      return TupleExprElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 9, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  /// Adds the provided `Argument` to the node's `argumentList`
  /// collection.
  /// - param element: The new `Argument` to add to the node's
  ///                  `argumentList` collection.
  /// - returns: A copy of the receiver with the provided `Argument`
  ///            appended to its `argumentList` collection.
  public func addArgument(_ element: TupleExprElementSyntax) -> MacroExpansionExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[9] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.tupleExprElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 9, with: collection, arena: arena)
    return MacroExpansionExprSyntax(newData)
  }

  public var unexpectedBetweenArgumentListAndRightParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 10, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 10, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var rightParen: TokenSyntax? {
    get {
      let childData = data.child(at: 11, parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 11, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var unexpectedBetweenRightParenAndTrailingClosure: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 12, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 12, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var trailingClosure: ClosureExprSyntax? {
    get {
      let childData = data.child(at: 13, parent: Syntax(self))
      if childData == nil { return nil }
      return ClosureExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 13, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 14, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 14, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public var additionalTrailingClosures: MultipleTrailingClosureElementListSyntax? {
    get {
      let childData = data.child(at: 15, parent: Syntax(self))
      if childData == nil { return nil }
      return MultipleTrailingClosureElementListSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 15, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  /// Adds the provided `AdditionalTrailingClosure` to the node's `additionalTrailingClosures`
  /// collection.
  /// - param element: The new `AdditionalTrailingClosure` to add to the node's
  ///                  `additionalTrailingClosures` collection.
  /// - returns: A copy of the receiver with the provided `AdditionalTrailingClosure`
  ///            appended to its `additionalTrailingClosures` collection.
  public func addAdditionalTrailingClosure(_ element: MultipleTrailingClosureElementSyntax) -> MacroExpansionExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[15] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.multipleTrailingClosureElementList,
        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 15, with: collection, arena: arena)
    return MacroExpansionExprSyntax(newData)
  }

  public var unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 16, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 16, with: raw, arena: arena)
      self = MacroExpansionExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforePoundToken,
      \Self.poundToken,
      \Self.unexpectedBetweenPoundTokenAndMacro,
      \Self.macro,
      \Self.unexpectedBetweenMacroAndGenericArguments,
      \Self.genericArguments,
      \Self.unexpectedBetweenGenericArgumentsAndLeftParen,
      \Self.leftParen,
      \Self.unexpectedBetweenLeftParenAndArgumentList,
      \Self.argumentList,
      \Self.unexpectedBetweenArgumentListAndRightParen,
      \Self.rightParen,
      \Self.unexpectedBetweenRightParenAndTrailingClosure,
      \Self.trailingClosure,
      \Self.unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures,
      \Self.additionalTrailingClosures,
      \Self.unexpectedAfterAdditionalTrailingClosures,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    case 5:
      return nil
    case 6:
      return nil
    case 7:
      return nil
    case 8:
      return nil
    case 9:
      return nil
    case 10:
      return nil
    case 11:
      return nil
    case 12:
      return nil
    case 13:
      return nil
    case 14:
      return nil
    case 15:
      return nil
    case 16:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension MacroExpansionExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforePoundToken": unexpectedBeforePoundToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "poundToken": Syntax(poundToken).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenPoundTokenAndMacro": unexpectedBetweenPoundTokenAndMacro.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "macro": Syntax(macro).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenMacroAndGenericArguments": unexpectedBetweenMacroAndGenericArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "genericArguments": genericArguments.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenGenericArgumentsAndLeftParen": unexpectedBetweenGenericArgumentsAndLeftParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftParen": leftParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenLeftParenAndArgumentList": unexpectedBetweenLeftParenAndArgumentList.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "argumentList": Syntax(argumentList).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenArgumentListAndRightParen": unexpectedBetweenArgumentListAndRightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightParen": rightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenRightParenAndTrailingClosure": unexpectedBetweenRightParenAndTrailingClosure.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "trailingClosure": trailingClosure.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures": unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "additionalTrailingClosures": additionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedAfterAdditionalTrailingClosures": unexpectedAfterAdditionalTrailingClosures.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - PostfixIfConfigExprSyntax

public struct PostfixIfConfigExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .postfixIfConfigExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `PostfixIfConfigExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .postfixIfConfigExpr)
    self._syntaxNode = Syntax(data)
  }

  public init<B: ExprSyntaxProtocol>(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBase: UnexpectedNodesSyntax? = nil,
    base: B? = nil,
    _ unexpectedBetweenBaseAndConfig: UnexpectedNodesSyntax? = nil,
    config: IfConfigDeclSyntax,
    _ unexpectedAfterConfig: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeBase, base, unexpectedBetweenBaseAndConfig, config, unexpectedAfterConfig))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeBase?.raw,
        base?.raw,
        unexpectedBetweenBaseAndConfig?.raw,
        config.raw,
        unexpectedAfterConfig?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.postfixIfConfigExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  /// This initializer exists solely because Swift 5.6 does not support
  /// `Optional<ConcreteType>.none` as a default value of a generic parameter.
  /// The above initializer thus defaults to `nil` instead, but that means it
  /// is not actually callable when either not passing the defaulted parameter,
  /// or passing `nil`.
  ///
  /// Hack around that limitation using this initializer, which takes a
  /// `Missing*` syntax node instead. `Missing*` is used over the base type as
  /// the base type would allow implicit conversion from a string literal,
  /// which the above initializer doesn't support.
  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeBase: UnexpectedNodesSyntax? = nil,
    base: MissingExprSyntax? = nil,
    _ unexpectedBetweenBaseAndConfig: UnexpectedNodesSyntax? = nil,
    config: IfConfigDeclSyntax,
    _ unexpectedAfterConfig: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    self.init(
      leadingTrivia: leadingTrivia,
      unexpectedBeforeBase,
      base: Optional<ExprSyntax>.none,
      unexpectedBetweenBaseAndConfig,
      config: config,
      unexpectedAfterConfig,
      trailingTrivia: trailingTrivia
    )
  }

  public var unexpectedBeforeBase: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = PostfixIfConfigExprSyntax(newData)
    }
  }

  public var base: ExprSyntax? {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      if childData == nil { return nil }
      return ExprSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = PostfixIfConfigExprSyntax(newData)
    }
  }

  public var unexpectedBetweenBaseAndConfig: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = PostfixIfConfigExprSyntax(newData)
    }
  }

  public var config: IfConfigDeclSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return IfConfigDeclSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 3, with: raw, arena: arena)
      self = PostfixIfConfigExprSyntax(newData)
    }
  }

  public var unexpectedAfterConfig: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 4, with: raw, arena: arena)
      self = PostfixIfConfigExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeBase,
      \Self.base,
      \Self.unexpectedBetweenBaseAndConfig,
      \Self.config,
      \Self.unexpectedAfterConfig,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    case 3:
      return nil
    case 4:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension PostfixIfConfigExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBase": unexpectedBeforeBase.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "base": base.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenBaseAndConfig": unexpectedBetweenBaseAndConfig.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "config": Syntax(config).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterConfig": unexpectedAfterConfig.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - EditorPlaceholderExprSyntax

public struct EditorPlaceholderExprSyntax: ExprSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .editorPlaceholderExpr else { return nil }
    self._syntaxNode = node._syntaxNode
  }

  /// Creates a `EditorPlaceholderExprSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .editorPlaceholderExpr)
    self._syntaxNode = Syntax(data)
  }

  public init(
    leadingTrivia: Trivia? = nil,
    _ unexpectedBeforeIdentifier: UnexpectedNodesSyntax? = nil,
    identifier: TokenSyntax,
    _ unexpectedAfterIdentifier: UnexpectedNodesSyntax? = nil,
    trailingTrivia: Trivia? = nil
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed 
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeIdentifier, identifier, unexpectedAfterIdentifier))) { (arena, _) in
      let layout: [RawSyntax?] = [
        unexpectedBeforeIdentifier?.raw,
        identifier.raw,
        unexpectedAfterIdentifier?.raw,
      ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.editorPlaceholderExpr, from: layout, arena: arena,
        leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }

  public var unexpectedBeforeIdentifier: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 0, with: raw, arena: arena)
      self = EditorPlaceholderExprSyntax(newData)
    }
  }

  public var identifier: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value.raw
      let newData = data.replacingChild(at: 1, with: raw, arena: arena)
      self = EditorPlaceholderExprSyntax(newData)
    }
  }

  public var unexpectedAfterIdentifier: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      let arena = SyntaxArena()
      let raw = value?.raw
      let newData = data.replacingChild(at: 2, with: raw, arena: arena)
      self = EditorPlaceholderExprSyntax(newData)
    }
  }

  public static var structure: SyntaxNodeStructure {
    return .layout([
      \Self.unexpectedBeforeIdentifier,
      \Self.identifier,
      \Self.unexpectedAfterIdentifier,
    ])
  }

  public func childNameForDiagnostics(_ index: SyntaxChildrenIndex) -> String? {
    switch index.data?.indexInParent {
    case 0:
      return nil
    case 1:
      return nil
    case 2:
      return nil
    default:
      fatalError("Invalid index")
    }
  }
}

extension EditorPlaceholderExprSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeIdentifier": unexpectedBeforeIdentifier.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "identifier": Syntax(identifier).asProtocol(SyntaxProtocol.self),
      "unexpectedAfterIdentifier": unexpectedAfterIdentifier.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

