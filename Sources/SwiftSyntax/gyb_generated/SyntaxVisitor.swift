//// Automatically Generated From SyntaxFactory.swift.gyb.
//// Do Not Edit Directly!
//===------------- SyntaxVisitor.swift - Syntax Visitor class -------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// The enum describes how the SyntaxVistor should continue after visiting
/// the current node.
public enum SyntaxVisitorContinueKind {

  /// The visitor should visit the descendents of the current node.
  case visitChildren

  /// The visitor should avoid visiting the descendents of the current node.
  case skipChildren
}

open class SyntaxVisitor {
  public init() {}

  /// Walk all nodes of the given syntax tree, calling the corresponding `visit` 
  /// function for every node that is being visited.
  public func walk<SyntaxType: SyntaxProtocol>(_ node: SyntaxType) {
    visit(node.data)
  }

  /// Visiting `UnknownDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `UnknownDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnknownDeclSyntax) {}
  /// Visiting `UnknownExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `UnknownExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnknownExprSyntax) {}
  /// Visiting `UnknownStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `UnknownStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnknownStmtSyntax) {}
  /// Visiting `UnknownTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `UnknownTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnknownTypeSyntax) {}
  /// Visiting `UnknownPatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `UnknownPatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnknownPatternSyntax) {}
  /// Visiting `CodeBlockItemSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CodeBlockItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CodeBlockItemSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CodeBlockItemSyntax) {}
  /// Visiting `CodeBlockItemListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CodeBlockItemListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CodeBlockItemListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CodeBlockItemListSyntax) {}
  /// Visiting `CodeBlockSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CodeBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CodeBlockSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CodeBlockSyntax) {}
  /// Visiting `InOutExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InOutExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `InOutExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: InOutExprSyntax) {}
  /// Visiting `PoundColumnExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundColumnExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundColumnExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundColumnExprSyntax) {}
  /// Visiting `TupleExprElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleExprElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TupleExprElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TupleExprElementListSyntax) {}
  /// Visiting `ArrayElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ArrayElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ArrayElementListSyntax) {}
  /// Visiting `DictionaryElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DictionaryElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DictionaryElementListSyntax) {}
  /// Visiting `StringLiteralSegmentsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringLiteralSegmentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `StringLiteralSegmentsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: StringLiteralSegmentsSyntax) {}
  /// Visiting `TryExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TryExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TryExprSyntax) {}
  /// Visiting `DeclNameArgumentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeclNameArgumentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeclNameArgumentSyntax) {}
  /// Visiting `DeclNameArgumentListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameArgumentListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeclNameArgumentListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeclNameArgumentListSyntax) {}
  /// Visiting `DeclNameArgumentsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameArgumentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeclNameArgumentsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeclNameArgumentsSyntax) {}
  /// Visiting `IdentifierExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IdentifierExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IdentifierExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IdentifierExprSyntax) {}
  /// Visiting `SuperRefExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SuperRefExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SuperRefExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SuperRefExprSyntax) {}
  /// Visiting `NilLiteralExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: NilLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `NilLiteralExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: NilLiteralExprSyntax) {}
  /// Visiting `DiscardAssignmentExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DiscardAssignmentExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DiscardAssignmentExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DiscardAssignmentExprSyntax) {}
  /// Visiting `AssignmentExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AssignmentExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AssignmentExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AssignmentExprSyntax) {}
  /// Visiting `SequenceExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SequenceExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SequenceExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SequenceExprSyntax) {}
  /// Visiting `ExprListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExprListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ExprListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ExprListSyntax) {}
  /// Visiting `PoundLineExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundLineExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundLineExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundLineExprSyntax) {}
  /// Visiting `PoundFileExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundFileExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundFileExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundFileExprSyntax) {}
  /// Visiting `PoundFilePathExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundFilePathExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundFilePathExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundFilePathExprSyntax) {}
  /// Visiting `PoundFunctionExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundFunctionExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundFunctionExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundFunctionExprSyntax) {}
  /// Visiting `PoundDsohandleExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundDsohandleExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundDsohandleExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundDsohandleExprSyntax) {}
  /// Visiting `SymbolicReferenceExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SymbolicReferenceExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SymbolicReferenceExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SymbolicReferenceExprSyntax) {}
  /// Visiting `PrefixOperatorExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrefixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrefixOperatorExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrefixOperatorExprSyntax) {}
  /// Visiting `BinaryOperatorExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: BinaryOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `BinaryOperatorExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: BinaryOperatorExprSyntax) {}
  /// Visiting `ArrowExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrowExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ArrowExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ArrowExprSyntax) {}
  /// Visiting `FloatLiteralExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FloatLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FloatLiteralExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FloatLiteralExprSyntax) {}
  /// Visiting `TupleExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TupleExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TupleExprSyntax) {}
  /// Visiting `ArrayExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ArrayExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ArrayExprSyntax) {}
  /// Visiting `DictionaryExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DictionaryExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DictionaryExprSyntax) {}
  /// Visiting `TupleExprElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleExprElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TupleExprElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TupleExprElementSyntax) {}
  /// Visiting `ArrayElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ArrayElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ArrayElementSyntax) {}
  /// Visiting `DictionaryElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DictionaryElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DictionaryElementSyntax) {}
  /// Visiting `IntegerLiteralExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IntegerLiteralExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IntegerLiteralExprSyntax) {}
  /// Visiting `BooleanLiteralExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: BooleanLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `BooleanLiteralExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: BooleanLiteralExprSyntax) {}
  /// Visiting `TernaryExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TernaryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TernaryExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TernaryExprSyntax) {}
  /// Visiting `MemberAccessExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberAccessExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MemberAccessExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MemberAccessExprSyntax) {}
  /// Visiting `IsExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IsExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IsExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IsExprSyntax) {}
  /// Visiting `AsExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AsExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AsExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AsExprSyntax) {}
  /// Visiting `TypeExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TypeExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TypeExprSyntax) {}
  /// Visiting `ClosureCaptureItemSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureCaptureItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureCaptureItemSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureCaptureItemSyntax) {}
  /// Visiting `ClosureCaptureItemListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureCaptureItemListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureCaptureItemListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureCaptureItemListSyntax) {}
  /// Visiting `ClosureCaptureSignatureSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureCaptureSignatureSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureCaptureSignatureSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureCaptureSignatureSyntax) {}
  /// Visiting `ClosureParamSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureParamSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureParamSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureParamSyntax) {}
  /// Visiting `ClosureParamListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureParamListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureParamListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureParamListSyntax) {}
  /// Visiting `ClosureSignatureSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureSignatureSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureSignatureSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureSignatureSyntax) {}
  /// Visiting `ClosureExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClosureExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClosureExprSyntax) {}
  /// Visiting `UnresolvedPatternExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnresolvedPatternExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `UnresolvedPatternExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnresolvedPatternExprSyntax) {}
  /// Visiting `MultipleTrailingClosureElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MultipleTrailingClosureElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MultipleTrailingClosureElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MultipleTrailingClosureElementSyntax) {}
  /// Visiting `MultipleTrailingClosureElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MultipleTrailingClosureElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MultipleTrailingClosureElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MultipleTrailingClosureElementListSyntax) {}
  /// Visiting `MultipleTrailingClosureClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MultipleTrailingClosureClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MultipleTrailingClosureClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MultipleTrailingClosureClauseSyntax) {}
  /// Visiting `FunctionCallExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionCallExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionCallExprSyntax) {}
  /// Visiting `SubscriptExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SubscriptExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SubscriptExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SubscriptExprSyntax) {}
  /// Visiting `OptionalChainingExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalChainingExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `OptionalChainingExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: OptionalChainingExprSyntax) {}
  /// Visiting `ForcedValueExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ForcedValueExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ForcedValueExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ForcedValueExprSyntax) {}
  /// Visiting `PostfixUnaryExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PostfixUnaryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PostfixUnaryExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PostfixUnaryExprSyntax) {}
  /// Visiting `SpecializeExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SpecializeExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SpecializeExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SpecializeExprSyntax) {}
  /// Visiting `StringSegmentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringSegmentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `StringSegmentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: StringSegmentSyntax) {}
  /// Visiting `ExpressionSegmentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExpressionSegmentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ExpressionSegmentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ExpressionSegmentSyntax) {}
  /// Visiting `StringLiteralExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `StringLiteralExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: StringLiteralExprSyntax) {}
  /// Visiting `KeyPathExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: KeyPathExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `KeyPathExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: KeyPathExprSyntax) {}
  /// Visiting `KeyPathBaseExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: KeyPathBaseExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `KeyPathBaseExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: KeyPathBaseExprSyntax) {}
  /// Visiting `ObjcNamePieceSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcNamePieceSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjcNamePieceSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjcNamePieceSyntax) {}
  /// Visiting `ObjcNameSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcNameSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjcNameSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjcNameSyntax) {}
  /// Visiting `ObjcKeyPathExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcKeyPathExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjcKeyPathExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjcKeyPathExprSyntax) {}
  /// Visiting `ObjcSelectorExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcSelectorExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjcSelectorExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjcSelectorExprSyntax) {}
  /// Visiting `EditorPlaceholderExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EditorPlaceholderExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `EditorPlaceholderExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: EditorPlaceholderExprSyntax) {}
  /// Visiting `ObjectLiteralExprSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjectLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjectLiteralExprSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjectLiteralExprSyntax) {}
  /// Visiting `TypeInitializerClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeInitializerClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TypeInitializerClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TypeInitializerClauseSyntax) {}
  /// Visiting `TypealiasDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypealiasDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TypealiasDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TypealiasDeclSyntax) {}
  /// Visiting `AssociatedtypeDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AssociatedtypeDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AssociatedtypeDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AssociatedtypeDeclSyntax) {}
  /// Visiting `FunctionParameterListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionParameterListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionParameterListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionParameterListSyntax) {}
  /// Visiting `ParameterClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ParameterClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ParameterClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ParameterClauseSyntax) {}
  /// Visiting `ReturnClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ReturnClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ReturnClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ReturnClauseSyntax) {}
  /// Visiting `FunctionSignatureSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionSignatureSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionSignatureSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionSignatureSyntax) {}
  /// Visiting `IfConfigClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfConfigClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IfConfigClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IfConfigClauseSyntax) {}
  /// Visiting `IfConfigClauseListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfConfigClauseListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IfConfigClauseListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IfConfigClauseListSyntax) {}
  /// Visiting `IfConfigDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfConfigDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IfConfigDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IfConfigDeclSyntax) {}
  /// Visiting `PoundErrorDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundErrorDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundErrorDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundErrorDeclSyntax) {}
  /// Visiting `PoundWarningDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundWarningDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundWarningDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundWarningDeclSyntax) {}
  /// Visiting `PoundSourceLocationSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundSourceLocationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundSourceLocationSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundSourceLocationSyntax) {}
  /// Visiting `PoundSourceLocationArgsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundSourceLocationArgsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundSourceLocationArgsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundSourceLocationArgsSyntax) {}
  /// Visiting `DeclModifierSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclModifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeclModifierSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeclModifierSyntax) {}
  /// Visiting `InheritedTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InheritedTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `InheritedTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: InheritedTypeSyntax) {}
  /// Visiting `InheritedTypeListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InheritedTypeListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `InheritedTypeListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: InheritedTypeListSyntax) {}
  /// Visiting `TypeInheritanceClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeInheritanceClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TypeInheritanceClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TypeInheritanceClauseSyntax) {}
  /// Visiting `ClassDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClassDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClassDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClassDeclSyntax) {}
  /// Visiting `StructDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StructDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `StructDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: StructDeclSyntax) {}
  /// Visiting `ProtocolDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ProtocolDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ProtocolDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ProtocolDeclSyntax) {}
  /// Visiting `ExtensionDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExtensionDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ExtensionDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ExtensionDeclSyntax) {}
  /// Visiting `MemberDeclBlockSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberDeclBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MemberDeclBlockSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MemberDeclBlockSyntax) {}
  /// Visiting `MemberDeclListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberDeclListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MemberDeclListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MemberDeclListSyntax) {}
  /// Visiting `MemberDeclListItemSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberDeclListItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MemberDeclListItemSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MemberDeclListItemSyntax) {}
  /// Visiting `SourceFileSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SourceFileSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SourceFileSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SourceFileSyntax) {}
  /// Visiting `InitializerClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InitializerClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `InitializerClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: InitializerClauseSyntax) {}
  /// Visiting `FunctionParameterSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionParameterSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionParameterSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionParameterSyntax) {}
  /// Visiting `ModifierListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ModifierListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ModifierListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ModifierListSyntax) {}
  /// Visiting `FunctionDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionDeclSyntax) {}
  /// Visiting `InitializerDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `InitializerDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: InitializerDeclSyntax) {}
  /// Visiting `DeinitializerDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeinitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeinitializerDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeinitializerDeclSyntax) {}
  /// Visiting `SubscriptDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SubscriptDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SubscriptDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SubscriptDeclSyntax) {}
  /// Visiting `AccessLevelModifierSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessLevelModifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessLevelModifierSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessLevelModifierSyntax) {}
  /// Visiting `AccessPathComponentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessPathComponentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessPathComponentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessPathComponentSyntax) {}
  /// Visiting `AccessPathSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessPathSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessPathSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessPathSyntax) {}
  /// Visiting `ImportDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImportDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ImportDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ImportDeclSyntax) {}
  /// Visiting `AccessorParameterSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorParameterSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessorParameterSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessorParameterSyntax) {}
  /// Visiting `AccessorDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessorDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessorDeclSyntax) {}
  /// Visiting `AccessorListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessorListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessorListSyntax) {}
  /// Visiting `AccessorBlockSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AccessorBlockSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AccessorBlockSyntax) {}
  /// Visiting `PatternBindingSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PatternBindingSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PatternBindingSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PatternBindingSyntax) {}
  /// Visiting `PatternBindingListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PatternBindingListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PatternBindingListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PatternBindingListSyntax) {}
  /// Visiting `VariableDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `VariableDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: VariableDeclSyntax) {}
  /// Visiting `EnumCaseElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCaseElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `EnumCaseElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: EnumCaseElementSyntax) {}
  /// Visiting `EnumCaseElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCaseElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `EnumCaseElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: EnumCaseElementListSyntax) {}
  /// Visiting `EnumCaseDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCaseDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `EnumCaseDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: EnumCaseDeclSyntax) {}
  /// Visiting `EnumDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `EnumDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: EnumDeclSyntax) {}
  /// Visiting `OperatorDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OperatorDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `OperatorDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: OperatorDeclSyntax) {}
  /// Visiting `IdentifierListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IdentifierListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IdentifierListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IdentifierListSyntax) {}
  /// Visiting `OperatorPrecedenceAndTypesSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OperatorPrecedenceAndTypesSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `OperatorPrecedenceAndTypesSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: OperatorPrecedenceAndTypesSyntax) {}
  /// Visiting `PrecedenceGroupDeclSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupDeclSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupDeclSyntax) {}
  /// Visiting `PrecedenceGroupAttributeListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupAttributeListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupAttributeListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupAttributeListSyntax) {}
  /// Visiting `PrecedenceGroupRelationSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupRelationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupRelationSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupRelationSyntax) {}
  /// Visiting `PrecedenceGroupNameListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupNameListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupNameListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupNameListSyntax) {}
  /// Visiting `PrecedenceGroupNameElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupNameElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupNameElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupNameElementSyntax) {}
  /// Visiting `PrecedenceGroupAssignmentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupAssignmentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupAssignmentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupAssignmentSyntax) {}
  /// Visiting `PrecedenceGroupAssociativitySyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupAssociativitySyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PrecedenceGroupAssociativitySyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PrecedenceGroupAssociativitySyntax) {}
  /// Visiting `TokenListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TokenListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TokenListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TokenListSyntax) {}
  /// Visiting `NonEmptyTokenListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: NonEmptyTokenListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `NonEmptyTokenListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: NonEmptyTokenListSyntax) {}
  /// Visiting `CustomAttributeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CustomAttributeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CustomAttributeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CustomAttributeSyntax) {}
  /// Visiting `AttributeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AttributeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AttributeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AttributeSyntax) {}
  /// Visiting `AttributeListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AttributeListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AttributeListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AttributeListSyntax) {}
  /// Visiting `SpecializeAttributeSpecListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SpecializeAttributeSpecListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SpecializeAttributeSpecListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SpecializeAttributeSpecListSyntax) {}
  /// Visiting `LabeledSpecializeEntrySyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: LabeledSpecializeEntrySyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `LabeledSpecializeEntrySyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: LabeledSpecializeEntrySyntax) {}
  /// Visiting `NamedAttributeStringArgumentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: NamedAttributeStringArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `NamedAttributeStringArgumentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: NamedAttributeStringArgumentSyntax) {}
  /// Visiting `DeclNameSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeclNameSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeclNameSyntax) {}
  /// Visiting `ImplementsAttributeArgumentsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImplementsAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ImplementsAttributeArgumentsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ImplementsAttributeArgumentsSyntax) {}
  /// Visiting `ObjCSelectorPieceSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjCSelectorPieceSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjCSelectorPieceSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjCSelectorPieceSyntax) {}
  /// Visiting `ObjCSelectorSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjCSelectorSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ObjCSelectorSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ObjCSelectorSyntax) {}
  /// Visiting `DifferentiableAttributeArgumentsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DifferentiableAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DifferentiableAttributeArgumentsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DifferentiableAttributeArgumentsSyntax) {}
  /// Visiting `DifferentiationParamsClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DifferentiationParamsClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DifferentiationParamsClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DifferentiationParamsClauseSyntax) {}
  /// Visiting `DifferentiationParamsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DifferentiationParamsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DifferentiationParamsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DifferentiationParamsSyntax) {}
  /// Visiting `DifferentiationParamListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DifferentiationParamListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DifferentiationParamListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DifferentiationParamListSyntax) {}
  /// Visiting `DifferentiationParamSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DifferentiationParamSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DifferentiationParamSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DifferentiationParamSyntax) {}
  /// Visiting `DifferentiableAttributeFuncSpecifierSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DifferentiableAttributeFuncSpecifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DifferentiableAttributeFuncSpecifierSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DifferentiableAttributeFuncSpecifierSyntax) {}
  /// Visiting `DerivativeRegistrationAttributeArgumentsSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DerivativeRegistrationAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DerivativeRegistrationAttributeArgumentsSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DerivativeRegistrationAttributeArgumentsSyntax) {}
  /// Visiting `QualifiedDeclNameSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: QualifiedDeclNameSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `QualifiedDeclNameSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: QualifiedDeclNameSyntax) {}
  /// Visiting `FunctionDeclNameSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionDeclNameSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionDeclNameSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionDeclNameSyntax) {}
  /// Visiting `ContinueStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ContinueStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ContinueStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ContinueStmtSyntax) {}
  /// Visiting `WhileStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: WhileStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `WhileStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: WhileStmtSyntax) {}
  /// Visiting `DeferStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeferStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeferStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeferStmtSyntax) {}
  /// Visiting `ExpressionStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExpressionStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ExpressionStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ExpressionStmtSyntax) {}
  /// Visiting `SwitchCaseListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchCaseListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SwitchCaseListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SwitchCaseListSyntax) {}
  /// Visiting `RepeatWhileStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: RepeatWhileStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `RepeatWhileStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: RepeatWhileStmtSyntax) {}
  /// Visiting `GuardStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GuardStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GuardStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GuardStmtSyntax) {}
  /// Visiting `WhereClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: WhereClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `WhereClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: WhereClauseSyntax) {}
  /// Visiting `ForInStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ForInStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ForInStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ForInStmtSyntax) {}
  /// Visiting `SwitchStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SwitchStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SwitchStmtSyntax) {}
  /// Visiting `CatchClauseListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CatchClauseListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CatchClauseListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CatchClauseListSyntax) {}
  /// Visiting `DoStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DoStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DoStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DoStmtSyntax) {}
  /// Visiting `ReturnStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ReturnStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ReturnStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ReturnStmtSyntax) {}
  /// Visiting `YieldStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: YieldStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `YieldStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: YieldStmtSyntax) {}
  /// Visiting `YieldListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: YieldListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `YieldListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: YieldListSyntax) {}
  /// Visiting `FallthroughStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FallthroughStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FallthroughStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FallthroughStmtSyntax) {}
  /// Visiting `BreakStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: BreakStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `BreakStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: BreakStmtSyntax) {}
  /// Visiting `CaseItemListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CaseItemListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CaseItemListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CaseItemListSyntax) {}
  /// Visiting `ConditionElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ConditionElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ConditionElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ConditionElementSyntax) {}
  /// Visiting `AvailabilityConditionSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityConditionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AvailabilityConditionSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AvailabilityConditionSyntax) {}
  /// Visiting `MatchingPatternConditionSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MatchingPatternConditionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MatchingPatternConditionSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MatchingPatternConditionSyntax) {}
  /// Visiting `OptionalBindingConditionSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalBindingConditionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `OptionalBindingConditionSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: OptionalBindingConditionSyntax) {}
  /// Visiting `ConditionElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ConditionElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ConditionElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ConditionElementListSyntax) {}
  /// Visiting `DeclarationStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclarationStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DeclarationStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DeclarationStmtSyntax) {}
  /// Visiting `ThrowStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ThrowStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ThrowStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ThrowStmtSyntax) {}
  /// Visiting `IfStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IfStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IfStmtSyntax) {}
  /// Visiting `ElseIfContinuationSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ElseIfContinuationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ElseIfContinuationSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ElseIfContinuationSyntax) {}
  /// Visiting `ElseBlockSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ElseBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ElseBlockSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ElseBlockSyntax) {}
  /// Visiting `SwitchCaseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchCaseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SwitchCaseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SwitchCaseSyntax) {}
  /// Visiting `SwitchDefaultLabelSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchDefaultLabelSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SwitchDefaultLabelSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SwitchDefaultLabelSyntax) {}
  /// Visiting `CaseItemSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CaseItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CaseItemSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CaseItemSyntax) {}
  /// Visiting `SwitchCaseLabelSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchCaseLabelSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SwitchCaseLabelSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SwitchCaseLabelSyntax) {}
  /// Visiting `CatchClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CatchClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CatchClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CatchClauseSyntax) {}
  /// Visiting `PoundAssertStmtSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundAssertStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `PoundAssertStmtSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: PoundAssertStmtSyntax) {}
  /// Visiting `GenericWhereClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericWhereClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericWhereClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericWhereClauseSyntax) {}
  /// Visiting `GenericRequirementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericRequirementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericRequirementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericRequirementListSyntax) {}
  /// Visiting `GenericRequirementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericRequirementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericRequirementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericRequirementSyntax) {}
  /// Visiting `SameTypeRequirementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SameTypeRequirementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SameTypeRequirementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SameTypeRequirementSyntax) {}
  /// Visiting `GenericParameterListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericParameterListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericParameterListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericParameterListSyntax) {}
  /// Visiting `GenericParameterSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericParameterSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericParameterSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericParameterSyntax) {}
  /// Visiting `GenericParameterClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericParameterClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericParameterClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericParameterClauseSyntax) {}
  /// Visiting `ConformanceRequirementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ConformanceRequirementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ConformanceRequirementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ConformanceRequirementSyntax) {}
  /// Visiting `SimpleTypeIdentifierSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SimpleTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SimpleTypeIdentifierSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SimpleTypeIdentifierSyntax) {}
  /// Visiting `MemberTypeIdentifierSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MemberTypeIdentifierSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MemberTypeIdentifierSyntax) {}
  /// Visiting `ClassRestrictionTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClassRestrictionTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ClassRestrictionTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ClassRestrictionTypeSyntax) {}
  /// Visiting `ArrayTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ArrayTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ArrayTypeSyntax) {}
  /// Visiting `DictionaryTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `DictionaryTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: DictionaryTypeSyntax) {}
  /// Visiting `MetatypeTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MetatypeTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `MetatypeTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: MetatypeTypeSyntax) {}
  /// Visiting `OptionalTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `OptionalTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: OptionalTypeSyntax) {}
  /// Visiting `SomeTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SomeTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `SomeTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: SomeTypeSyntax) {}
  /// Visiting `ImplicitlyUnwrappedOptionalTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ImplicitlyUnwrappedOptionalTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) {}
  /// Visiting `CompositionTypeElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CompositionTypeElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CompositionTypeElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CompositionTypeElementSyntax) {}
  /// Visiting `CompositionTypeElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CompositionTypeElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CompositionTypeElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CompositionTypeElementListSyntax) {}
  /// Visiting `CompositionTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CompositionTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `CompositionTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: CompositionTypeSyntax) {}
  /// Visiting `TupleTypeElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleTypeElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TupleTypeElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TupleTypeElementSyntax) {}
  /// Visiting `TupleTypeElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleTypeElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TupleTypeElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TupleTypeElementListSyntax) {}
  /// Visiting `TupleTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TupleTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TupleTypeSyntax) {}
  /// Visiting `FunctionTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `FunctionTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: FunctionTypeSyntax) {}
  /// Visiting `AttributedTypeSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AttributedTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AttributedTypeSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AttributedTypeSyntax) {}
  /// Visiting `GenericArgumentListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericArgumentListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericArgumentListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericArgumentListSyntax) {}
  /// Visiting `GenericArgumentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericArgumentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericArgumentSyntax) {}
  /// Visiting `GenericArgumentClauseSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericArgumentClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `GenericArgumentClauseSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: GenericArgumentClauseSyntax) {}
  /// Visiting `TypeAnnotationSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeAnnotationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TypeAnnotationSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TypeAnnotationSyntax) {}
  /// Visiting `EnumCasePatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCasePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `EnumCasePatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: EnumCasePatternSyntax) {}
  /// Visiting `IsTypePatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IsTypePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IsTypePatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IsTypePatternSyntax) {}
  /// Visiting `OptionalPatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `OptionalPatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: OptionalPatternSyntax) {}
  /// Visiting `IdentifierPatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IdentifierPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `IdentifierPatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: IdentifierPatternSyntax) {}
  /// Visiting `AsTypePatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AsTypePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AsTypePatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AsTypePatternSyntax) {}
  /// Visiting `TuplePatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TuplePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TuplePatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TuplePatternSyntax) {}
  /// Visiting `WildcardPatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: WildcardPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `WildcardPatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: WildcardPatternSyntax) {}
  /// Visiting `TuplePatternElementSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TuplePatternElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TuplePatternElementSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TuplePatternElementSyntax) {}
  /// Visiting `ExpressionPatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExpressionPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ExpressionPatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ExpressionPatternSyntax) {}
  /// Visiting `TuplePatternElementListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TuplePatternElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `TuplePatternElementListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TuplePatternElementListSyntax) {}
  /// Visiting `ValueBindingPatternSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ValueBindingPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `ValueBindingPatternSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: ValueBindingPatternSyntax) {}
  /// Visiting `AvailabilitySpecListSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilitySpecListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AvailabilitySpecListSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AvailabilitySpecListSyntax) {}
  /// Visiting `AvailabilityArgumentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AvailabilityArgumentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AvailabilityArgumentSyntax) {}
  /// Visiting `AvailabilityLabeledArgumentSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityLabeledArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AvailabilityLabeledArgumentSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AvailabilityLabeledArgumentSyntax) {}
  /// Visiting `AvailabilityVersionRestrictionSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityVersionRestrictionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `AvailabilityVersionRestrictionSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: AvailabilityVersionRestrictionSyntax) {}
  /// Visiting `VersionTupleSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: VersionTupleSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting `VersionTupleSyntax` and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: VersionTupleSyntax) {}

  /// Visiting `TokenSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ token: TokenSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting the node and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: TokenSyntax) {}

  /// Visiting `UnknownSyntax` specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// The function called after visiting the node and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: UnknownSyntax) {}

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclSyntax(_ data: SyntaxData) {
      let node = UnknownDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplExprSyntax(_ data: SyntaxData) {
      let node = UnknownExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplStmtSyntax(_ data: SyntaxData) {
      let node = UnknownStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTypeSyntax(_ data: SyntaxData) {
      let node = UnknownTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPatternSyntax(_ data: SyntaxData) {
      let node = UnknownPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplUnknownDeclSyntax(_ data: SyntaxData) {
      let node = UnknownDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplUnknownExprSyntax(_ data: SyntaxData) {
      let node = UnknownExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplUnknownStmtSyntax(_ data: SyntaxData) {
      let node = UnknownStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplUnknownTypeSyntax(_ data: SyntaxData) {
      let node = UnknownTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplUnknownPatternSyntax(_ data: SyntaxData) {
      let node = UnknownPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCodeBlockItemSyntax(_ data: SyntaxData) {
      let node = CodeBlockItemSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCodeBlockItemListSyntax(_ data: SyntaxData) {
      let node = CodeBlockItemListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCodeBlockSyntax(_ data: SyntaxData) {
      let node = CodeBlockSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplInOutExprSyntax(_ data: SyntaxData) {
      let node = InOutExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundColumnExprSyntax(_ data: SyntaxData) {
      let node = PoundColumnExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTupleExprElementListSyntax(_ data: SyntaxData) {
      let node = TupleExprElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplArrayElementListSyntax(_ data: SyntaxData) {
      let node = ArrayElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDictionaryElementListSyntax(_ data: SyntaxData) {
      let node = DictionaryElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplStringLiteralSegmentsSyntax(_ data: SyntaxData) {
      let node = StringLiteralSegmentsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTryExprSyntax(_ data: SyntaxData) {
      let node = TryExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclNameArgumentSyntax(_ data: SyntaxData) {
      let node = DeclNameArgumentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclNameArgumentListSyntax(_ data: SyntaxData) {
      let node = DeclNameArgumentListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclNameArgumentsSyntax(_ data: SyntaxData) {
      let node = DeclNameArgumentsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIdentifierExprSyntax(_ data: SyntaxData) {
      let node = IdentifierExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSuperRefExprSyntax(_ data: SyntaxData) {
      let node = SuperRefExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplNilLiteralExprSyntax(_ data: SyntaxData) {
      let node = NilLiteralExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDiscardAssignmentExprSyntax(_ data: SyntaxData) {
      let node = DiscardAssignmentExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAssignmentExprSyntax(_ data: SyntaxData) {
      let node = AssignmentExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSequenceExprSyntax(_ data: SyntaxData) {
      let node = SequenceExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplExprListSyntax(_ data: SyntaxData) {
      let node = ExprListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundLineExprSyntax(_ data: SyntaxData) {
      let node = PoundLineExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundFileExprSyntax(_ data: SyntaxData) {
      let node = PoundFileExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundFilePathExprSyntax(_ data: SyntaxData) {
      let node = PoundFilePathExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundFunctionExprSyntax(_ data: SyntaxData) {
      let node = PoundFunctionExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundDsohandleExprSyntax(_ data: SyntaxData) {
      let node = PoundDsohandleExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSymbolicReferenceExprSyntax(_ data: SyntaxData) {
      let node = SymbolicReferenceExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrefixOperatorExprSyntax(_ data: SyntaxData) {
      let node = PrefixOperatorExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplBinaryOperatorExprSyntax(_ data: SyntaxData) {
      let node = BinaryOperatorExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplArrowExprSyntax(_ data: SyntaxData) {
      let node = ArrowExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFloatLiteralExprSyntax(_ data: SyntaxData) {
      let node = FloatLiteralExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTupleExprSyntax(_ data: SyntaxData) {
      let node = TupleExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplArrayExprSyntax(_ data: SyntaxData) {
      let node = ArrayExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDictionaryExprSyntax(_ data: SyntaxData) {
      let node = DictionaryExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTupleExprElementSyntax(_ data: SyntaxData) {
      let node = TupleExprElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplArrayElementSyntax(_ data: SyntaxData) {
      let node = ArrayElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDictionaryElementSyntax(_ data: SyntaxData) {
      let node = DictionaryElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIntegerLiteralExprSyntax(_ data: SyntaxData) {
      let node = IntegerLiteralExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplBooleanLiteralExprSyntax(_ data: SyntaxData) {
      let node = BooleanLiteralExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTernaryExprSyntax(_ data: SyntaxData) {
      let node = TernaryExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMemberAccessExprSyntax(_ data: SyntaxData) {
      let node = MemberAccessExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIsExprSyntax(_ data: SyntaxData) {
      let node = IsExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAsExprSyntax(_ data: SyntaxData) {
      let node = AsExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTypeExprSyntax(_ data: SyntaxData) {
      let node = TypeExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureCaptureItemSyntax(_ data: SyntaxData) {
      let node = ClosureCaptureItemSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureCaptureItemListSyntax(_ data: SyntaxData) {
      let node = ClosureCaptureItemListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureCaptureSignatureSyntax(_ data: SyntaxData) {
      let node = ClosureCaptureSignatureSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureParamSyntax(_ data: SyntaxData) {
      let node = ClosureParamSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureParamListSyntax(_ data: SyntaxData) {
      let node = ClosureParamListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureSignatureSyntax(_ data: SyntaxData) {
      let node = ClosureSignatureSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClosureExprSyntax(_ data: SyntaxData) {
      let node = ClosureExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplUnresolvedPatternExprSyntax(_ data: SyntaxData) {
      let node = UnresolvedPatternExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMultipleTrailingClosureElementSyntax(_ data: SyntaxData) {
      let node = MultipleTrailingClosureElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMultipleTrailingClosureElementListSyntax(_ data: SyntaxData) {
      let node = MultipleTrailingClosureElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMultipleTrailingClosureClauseSyntax(_ data: SyntaxData) {
      let node = MultipleTrailingClosureClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionCallExprSyntax(_ data: SyntaxData) {
      let node = FunctionCallExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSubscriptExprSyntax(_ data: SyntaxData) {
      let node = SubscriptExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplOptionalChainingExprSyntax(_ data: SyntaxData) {
      let node = OptionalChainingExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplForcedValueExprSyntax(_ data: SyntaxData) {
      let node = ForcedValueExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPostfixUnaryExprSyntax(_ data: SyntaxData) {
      let node = PostfixUnaryExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSpecializeExprSyntax(_ data: SyntaxData) {
      let node = SpecializeExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplStringSegmentSyntax(_ data: SyntaxData) {
      let node = StringSegmentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplExpressionSegmentSyntax(_ data: SyntaxData) {
      let node = ExpressionSegmentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplStringLiteralExprSyntax(_ data: SyntaxData) {
      let node = StringLiteralExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplKeyPathExprSyntax(_ data: SyntaxData) {
      let node = KeyPathExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplKeyPathBaseExprSyntax(_ data: SyntaxData) {
      let node = KeyPathBaseExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjcNamePieceSyntax(_ data: SyntaxData) {
      let node = ObjcNamePieceSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjcNameSyntax(_ data: SyntaxData) {
      let node = ObjcNameSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjcKeyPathExprSyntax(_ data: SyntaxData) {
      let node = ObjcKeyPathExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjcSelectorExprSyntax(_ data: SyntaxData) {
      let node = ObjcSelectorExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplEditorPlaceholderExprSyntax(_ data: SyntaxData) {
      let node = EditorPlaceholderExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjectLiteralExprSyntax(_ data: SyntaxData) {
      let node = ObjectLiteralExprSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTypeInitializerClauseSyntax(_ data: SyntaxData) {
      let node = TypeInitializerClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTypealiasDeclSyntax(_ data: SyntaxData) {
      let node = TypealiasDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAssociatedtypeDeclSyntax(_ data: SyntaxData) {
      let node = AssociatedtypeDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionParameterListSyntax(_ data: SyntaxData) {
      let node = FunctionParameterListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplParameterClauseSyntax(_ data: SyntaxData) {
      let node = ParameterClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplReturnClauseSyntax(_ data: SyntaxData) {
      let node = ReturnClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionSignatureSyntax(_ data: SyntaxData) {
      let node = FunctionSignatureSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIfConfigClauseSyntax(_ data: SyntaxData) {
      let node = IfConfigClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIfConfigClauseListSyntax(_ data: SyntaxData) {
      let node = IfConfigClauseListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIfConfigDeclSyntax(_ data: SyntaxData) {
      let node = IfConfigDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundErrorDeclSyntax(_ data: SyntaxData) {
      let node = PoundErrorDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundWarningDeclSyntax(_ data: SyntaxData) {
      let node = PoundWarningDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundSourceLocationSyntax(_ data: SyntaxData) {
      let node = PoundSourceLocationSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundSourceLocationArgsSyntax(_ data: SyntaxData) {
      let node = PoundSourceLocationArgsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclModifierSyntax(_ data: SyntaxData) {
      let node = DeclModifierSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplInheritedTypeSyntax(_ data: SyntaxData) {
      let node = InheritedTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplInheritedTypeListSyntax(_ data: SyntaxData) {
      let node = InheritedTypeListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTypeInheritanceClauseSyntax(_ data: SyntaxData) {
      let node = TypeInheritanceClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClassDeclSyntax(_ data: SyntaxData) {
      let node = ClassDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplStructDeclSyntax(_ data: SyntaxData) {
      let node = StructDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplProtocolDeclSyntax(_ data: SyntaxData) {
      let node = ProtocolDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplExtensionDeclSyntax(_ data: SyntaxData) {
      let node = ExtensionDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMemberDeclBlockSyntax(_ data: SyntaxData) {
      let node = MemberDeclBlockSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMemberDeclListSyntax(_ data: SyntaxData) {
      let node = MemberDeclListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMemberDeclListItemSyntax(_ data: SyntaxData) {
      let node = MemberDeclListItemSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSourceFileSyntax(_ data: SyntaxData) {
      let node = SourceFileSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplInitializerClauseSyntax(_ data: SyntaxData) {
      let node = InitializerClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionParameterSyntax(_ data: SyntaxData) {
      let node = FunctionParameterSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplModifierListSyntax(_ data: SyntaxData) {
      let node = ModifierListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionDeclSyntax(_ data: SyntaxData) {
      let node = FunctionDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplInitializerDeclSyntax(_ data: SyntaxData) {
      let node = InitializerDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeinitializerDeclSyntax(_ data: SyntaxData) {
      let node = DeinitializerDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSubscriptDeclSyntax(_ data: SyntaxData) {
      let node = SubscriptDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessLevelModifierSyntax(_ data: SyntaxData) {
      let node = AccessLevelModifierSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessPathComponentSyntax(_ data: SyntaxData) {
      let node = AccessPathComponentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessPathSyntax(_ data: SyntaxData) {
      let node = AccessPathSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplImportDeclSyntax(_ data: SyntaxData) {
      let node = ImportDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessorParameterSyntax(_ data: SyntaxData) {
      let node = AccessorParameterSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessorDeclSyntax(_ data: SyntaxData) {
      let node = AccessorDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessorListSyntax(_ data: SyntaxData) {
      let node = AccessorListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAccessorBlockSyntax(_ data: SyntaxData) {
      let node = AccessorBlockSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPatternBindingSyntax(_ data: SyntaxData) {
      let node = PatternBindingSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPatternBindingListSyntax(_ data: SyntaxData) {
      let node = PatternBindingListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplVariableDeclSyntax(_ data: SyntaxData) {
      let node = VariableDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplEnumCaseElementSyntax(_ data: SyntaxData) {
      let node = EnumCaseElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplEnumCaseElementListSyntax(_ data: SyntaxData) {
      let node = EnumCaseElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplEnumCaseDeclSyntax(_ data: SyntaxData) {
      let node = EnumCaseDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplEnumDeclSyntax(_ data: SyntaxData) {
      let node = EnumDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplOperatorDeclSyntax(_ data: SyntaxData) {
      let node = OperatorDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIdentifierListSyntax(_ data: SyntaxData) {
      let node = IdentifierListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplOperatorPrecedenceAndTypesSyntax(_ data: SyntaxData) {
      let node = OperatorPrecedenceAndTypesSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupDeclSyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupDeclSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupAttributeListSyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupAttributeListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupRelationSyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupRelationSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupNameListSyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupNameListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupNameElementSyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupNameElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupAssignmentSyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupAssignmentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPrecedenceGroupAssociativitySyntax(_ data: SyntaxData) {
      let node = PrecedenceGroupAssociativitySyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTokenListSyntax(_ data: SyntaxData) {
      let node = TokenListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplNonEmptyTokenListSyntax(_ data: SyntaxData) {
      let node = NonEmptyTokenListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCustomAttributeSyntax(_ data: SyntaxData) {
      let node = CustomAttributeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAttributeSyntax(_ data: SyntaxData) {
      let node = AttributeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAttributeListSyntax(_ data: SyntaxData) {
      let node = AttributeListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSpecializeAttributeSpecListSyntax(_ data: SyntaxData) {
      let node = SpecializeAttributeSpecListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplLabeledSpecializeEntrySyntax(_ data: SyntaxData) {
      let node = LabeledSpecializeEntrySyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplNamedAttributeStringArgumentSyntax(_ data: SyntaxData) {
      let node = NamedAttributeStringArgumentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclNameSyntax(_ data: SyntaxData) {
      let node = DeclNameSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplImplementsAttributeArgumentsSyntax(_ data: SyntaxData) {
      let node = ImplementsAttributeArgumentsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjCSelectorPieceSyntax(_ data: SyntaxData) {
      let node = ObjCSelectorPieceSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplObjCSelectorSyntax(_ data: SyntaxData) {
      let node = ObjCSelectorSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDifferentiableAttributeArgumentsSyntax(_ data: SyntaxData) {
      let node = DifferentiableAttributeArgumentsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDifferentiationParamsClauseSyntax(_ data: SyntaxData) {
      let node = DifferentiationParamsClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDifferentiationParamsSyntax(_ data: SyntaxData) {
      let node = DifferentiationParamsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDifferentiationParamListSyntax(_ data: SyntaxData) {
      let node = DifferentiationParamListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDifferentiationParamSyntax(_ data: SyntaxData) {
      let node = DifferentiationParamSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDifferentiableAttributeFuncSpecifierSyntax(_ data: SyntaxData) {
      let node = DifferentiableAttributeFuncSpecifierSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDerivativeRegistrationAttributeArgumentsSyntax(_ data: SyntaxData) {
      let node = DerivativeRegistrationAttributeArgumentsSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplQualifiedDeclNameSyntax(_ data: SyntaxData) {
      let node = QualifiedDeclNameSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionDeclNameSyntax(_ data: SyntaxData) {
      let node = FunctionDeclNameSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplContinueStmtSyntax(_ data: SyntaxData) {
      let node = ContinueStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplWhileStmtSyntax(_ data: SyntaxData) {
      let node = WhileStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeferStmtSyntax(_ data: SyntaxData) {
      let node = DeferStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplExpressionStmtSyntax(_ data: SyntaxData) {
      let node = ExpressionStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSwitchCaseListSyntax(_ data: SyntaxData) {
      let node = SwitchCaseListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplRepeatWhileStmtSyntax(_ data: SyntaxData) {
      let node = RepeatWhileStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGuardStmtSyntax(_ data: SyntaxData) {
      let node = GuardStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplWhereClauseSyntax(_ data: SyntaxData) {
      let node = WhereClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplForInStmtSyntax(_ data: SyntaxData) {
      let node = ForInStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSwitchStmtSyntax(_ data: SyntaxData) {
      let node = SwitchStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCatchClauseListSyntax(_ data: SyntaxData) {
      let node = CatchClauseListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDoStmtSyntax(_ data: SyntaxData) {
      let node = DoStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplReturnStmtSyntax(_ data: SyntaxData) {
      let node = ReturnStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplYieldStmtSyntax(_ data: SyntaxData) {
      let node = YieldStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplYieldListSyntax(_ data: SyntaxData) {
      let node = YieldListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFallthroughStmtSyntax(_ data: SyntaxData) {
      let node = FallthroughStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplBreakStmtSyntax(_ data: SyntaxData) {
      let node = BreakStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCaseItemListSyntax(_ data: SyntaxData) {
      let node = CaseItemListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplConditionElementSyntax(_ data: SyntaxData) {
      let node = ConditionElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAvailabilityConditionSyntax(_ data: SyntaxData) {
      let node = AvailabilityConditionSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMatchingPatternConditionSyntax(_ data: SyntaxData) {
      let node = MatchingPatternConditionSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplOptionalBindingConditionSyntax(_ data: SyntaxData) {
      let node = OptionalBindingConditionSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplConditionElementListSyntax(_ data: SyntaxData) {
      let node = ConditionElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDeclarationStmtSyntax(_ data: SyntaxData) {
      let node = DeclarationStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplThrowStmtSyntax(_ data: SyntaxData) {
      let node = ThrowStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIfStmtSyntax(_ data: SyntaxData) {
      let node = IfStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplElseIfContinuationSyntax(_ data: SyntaxData) {
      let node = ElseIfContinuationSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplElseBlockSyntax(_ data: SyntaxData) {
      let node = ElseBlockSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSwitchCaseSyntax(_ data: SyntaxData) {
      let node = SwitchCaseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSwitchDefaultLabelSyntax(_ data: SyntaxData) {
      let node = SwitchDefaultLabelSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCaseItemSyntax(_ data: SyntaxData) {
      let node = CaseItemSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSwitchCaseLabelSyntax(_ data: SyntaxData) {
      let node = SwitchCaseLabelSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCatchClauseSyntax(_ data: SyntaxData) {
      let node = CatchClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplPoundAssertStmtSyntax(_ data: SyntaxData) {
      let node = PoundAssertStmtSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericWhereClauseSyntax(_ data: SyntaxData) {
      let node = GenericWhereClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericRequirementListSyntax(_ data: SyntaxData) {
      let node = GenericRequirementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericRequirementSyntax(_ data: SyntaxData) {
      let node = GenericRequirementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSameTypeRequirementSyntax(_ data: SyntaxData) {
      let node = SameTypeRequirementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericParameterListSyntax(_ data: SyntaxData) {
      let node = GenericParameterListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericParameterSyntax(_ data: SyntaxData) {
      let node = GenericParameterSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericParameterClauseSyntax(_ data: SyntaxData) {
      let node = GenericParameterClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplConformanceRequirementSyntax(_ data: SyntaxData) {
      let node = ConformanceRequirementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSimpleTypeIdentifierSyntax(_ data: SyntaxData) {
      let node = SimpleTypeIdentifierSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMemberTypeIdentifierSyntax(_ data: SyntaxData) {
      let node = MemberTypeIdentifierSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplClassRestrictionTypeSyntax(_ data: SyntaxData) {
      let node = ClassRestrictionTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplArrayTypeSyntax(_ data: SyntaxData) {
      let node = ArrayTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplDictionaryTypeSyntax(_ data: SyntaxData) {
      let node = DictionaryTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplMetatypeTypeSyntax(_ data: SyntaxData) {
      let node = MetatypeTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplOptionalTypeSyntax(_ data: SyntaxData) {
      let node = OptionalTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplSomeTypeSyntax(_ data: SyntaxData) {
      let node = SomeTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplImplicitlyUnwrappedOptionalTypeSyntax(_ data: SyntaxData) {
      let node = ImplicitlyUnwrappedOptionalTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCompositionTypeElementSyntax(_ data: SyntaxData) {
      let node = CompositionTypeElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCompositionTypeElementListSyntax(_ data: SyntaxData) {
      let node = CompositionTypeElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplCompositionTypeSyntax(_ data: SyntaxData) {
      let node = CompositionTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTupleTypeElementSyntax(_ data: SyntaxData) {
      let node = TupleTypeElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTupleTypeElementListSyntax(_ data: SyntaxData) {
      let node = TupleTypeElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTupleTypeSyntax(_ data: SyntaxData) {
      let node = TupleTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplFunctionTypeSyntax(_ data: SyntaxData) {
      let node = FunctionTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAttributedTypeSyntax(_ data: SyntaxData) {
      let node = AttributedTypeSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericArgumentListSyntax(_ data: SyntaxData) {
      let node = GenericArgumentListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericArgumentSyntax(_ data: SyntaxData) {
      let node = GenericArgumentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplGenericArgumentClauseSyntax(_ data: SyntaxData) {
      let node = GenericArgumentClauseSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTypeAnnotationSyntax(_ data: SyntaxData) {
      let node = TypeAnnotationSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplEnumCasePatternSyntax(_ data: SyntaxData) {
      let node = EnumCasePatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIsTypePatternSyntax(_ data: SyntaxData) {
      let node = IsTypePatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplOptionalPatternSyntax(_ data: SyntaxData) {
      let node = OptionalPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplIdentifierPatternSyntax(_ data: SyntaxData) {
      let node = IdentifierPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAsTypePatternSyntax(_ data: SyntaxData) {
      let node = AsTypePatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTuplePatternSyntax(_ data: SyntaxData) {
      let node = TuplePatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplWildcardPatternSyntax(_ data: SyntaxData) {
      let node = WildcardPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTuplePatternElementSyntax(_ data: SyntaxData) {
      let node = TuplePatternElementSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplExpressionPatternSyntax(_ data: SyntaxData) {
      let node = ExpressionPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplTuplePatternElementListSyntax(_ data: SyntaxData) {
      let node = TuplePatternElementListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplValueBindingPatternSyntax(_ data: SyntaxData) {
      let node = ValueBindingPatternSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAvailabilitySpecListSyntax(_ data: SyntaxData) {
      let node = AvailabilitySpecListSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAvailabilityArgumentSyntax(_ data: SyntaxData) {
      let node = AvailabilityArgumentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAvailabilityLabeledArgumentSyntax(_ data: SyntaxData) {
      let node = AvailabilityLabeledArgumentSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplAvailabilityVersionRestrictionSyntax(_ data: SyntaxData) {
      let node = AvailabilityVersionRestrictionSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }

  /// Implementation detail of doVisit(_:_:). Do not call directly.
  private func visitImplVersionTupleSyntax(_ data: SyntaxData) {
      let node = VersionTupleSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
  }


  private func visit(_ data: SyntaxData) {
    switch data.raw.kind {
    case .token:
      let node = TokenSyntax(data)
      _ = visit(node)
      // No children to visit.
      visitPost(node)
    case .unknown:
      let node = UnknownSyntax(data)
      let needsChildren = (visit(node) == .visitChildren)
      // Avoid calling into visitChildren if possible.
      if needsChildren && node.raw.numberOfChildren > 0 {
        visitChildren(node)
      }
      visitPost(node)
    // The implementation of every generated case goes into its own function. This
    // circumvents an issue where the compiler allocates stack space for every
    // case statement next to each other in debug builds, causing it to allocate
    // ~50KB per call to this function. rdar://55929175
    case .decl:
      visitImplDeclSyntax(data)
    case .expr:
      visitImplExprSyntax(data)
    case .stmt:
      visitImplStmtSyntax(data)
    case .type:
      visitImplTypeSyntax(data)
    case .pattern:
      visitImplPatternSyntax(data)
    case .unknownDecl:
      visitImplUnknownDeclSyntax(data)
    case .unknownExpr:
      visitImplUnknownExprSyntax(data)
    case .unknownStmt:
      visitImplUnknownStmtSyntax(data)
    case .unknownType:
      visitImplUnknownTypeSyntax(data)
    case .unknownPattern:
      visitImplUnknownPatternSyntax(data)
    case .codeBlockItem:
      visitImplCodeBlockItemSyntax(data)
    case .codeBlockItemList:
      visitImplCodeBlockItemListSyntax(data)
    case .codeBlock:
      visitImplCodeBlockSyntax(data)
    case .inOutExpr:
      visitImplInOutExprSyntax(data)
    case .poundColumnExpr:
      visitImplPoundColumnExprSyntax(data)
    case .tupleExprElementList:
      visitImplTupleExprElementListSyntax(data)
    case .arrayElementList:
      visitImplArrayElementListSyntax(data)
    case .dictionaryElementList:
      visitImplDictionaryElementListSyntax(data)
    case .stringLiteralSegments:
      visitImplStringLiteralSegmentsSyntax(data)
    case .tryExpr:
      visitImplTryExprSyntax(data)
    case .declNameArgument:
      visitImplDeclNameArgumentSyntax(data)
    case .declNameArgumentList:
      visitImplDeclNameArgumentListSyntax(data)
    case .declNameArguments:
      visitImplDeclNameArgumentsSyntax(data)
    case .identifierExpr:
      visitImplIdentifierExprSyntax(data)
    case .superRefExpr:
      visitImplSuperRefExprSyntax(data)
    case .nilLiteralExpr:
      visitImplNilLiteralExprSyntax(data)
    case .discardAssignmentExpr:
      visitImplDiscardAssignmentExprSyntax(data)
    case .assignmentExpr:
      visitImplAssignmentExprSyntax(data)
    case .sequenceExpr:
      visitImplSequenceExprSyntax(data)
    case .exprList:
      visitImplExprListSyntax(data)
    case .poundLineExpr:
      visitImplPoundLineExprSyntax(data)
    case .poundFileExpr:
      visitImplPoundFileExprSyntax(data)
    case .poundFilePathExpr:
      visitImplPoundFilePathExprSyntax(data)
    case .poundFunctionExpr:
      visitImplPoundFunctionExprSyntax(data)
    case .poundDsohandleExpr:
      visitImplPoundDsohandleExprSyntax(data)
    case .symbolicReferenceExpr:
      visitImplSymbolicReferenceExprSyntax(data)
    case .prefixOperatorExpr:
      visitImplPrefixOperatorExprSyntax(data)
    case .binaryOperatorExpr:
      visitImplBinaryOperatorExprSyntax(data)
    case .arrowExpr:
      visitImplArrowExprSyntax(data)
    case .floatLiteralExpr:
      visitImplFloatLiteralExprSyntax(data)
    case .tupleExpr:
      visitImplTupleExprSyntax(data)
    case .arrayExpr:
      visitImplArrayExprSyntax(data)
    case .dictionaryExpr:
      visitImplDictionaryExprSyntax(data)
    case .tupleExprElement:
      visitImplTupleExprElementSyntax(data)
    case .arrayElement:
      visitImplArrayElementSyntax(data)
    case .dictionaryElement:
      visitImplDictionaryElementSyntax(data)
    case .integerLiteralExpr:
      visitImplIntegerLiteralExprSyntax(data)
    case .booleanLiteralExpr:
      visitImplBooleanLiteralExprSyntax(data)
    case .ternaryExpr:
      visitImplTernaryExprSyntax(data)
    case .memberAccessExpr:
      visitImplMemberAccessExprSyntax(data)
    case .isExpr:
      visitImplIsExprSyntax(data)
    case .asExpr:
      visitImplAsExprSyntax(data)
    case .typeExpr:
      visitImplTypeExprSyntax(data)
    case .closureCaptureItem:
      visitImplClosureCaptureItemSyntax(data)
    case .closureCaptureItemList:
      visitImplClosureCaptureItemListSyntax(data)
    case .closureCaptureSignature:
      visitImplClosureCaptureSignatureSyntax(data)
    case .closureParam:
      visitImplClosureParamSyntax(data)
    case .closureParamList:
      visitImplClosureParamListSyntax(data)
    case .closureSignature:
      visitImplClosureSignatureSyntax(data)
    case .closureExpr:
      visitImplClosureExprSyntax(data)
    case .unresolvedPatternExpr:
      visitImplUnresolvedPatternExprSyntax(data)
    case .multipleTrailingClosureElement:
      visitImplMultipleTrailingClosureElementSyntax(data)
    case .multipleTrailingClosureElementList:
      visitImplMultipleTrailingClosureElementListSyntax(data)
    case .multipleTrailingClosureClause:
      visitImplMultipleTrailingClosureClauseSyntax(data)
    case .functionCallExpr:
      visitImplFunctionCallExprSyntax(data)
    case .subscriptExpr:
      visitImplSubscriptExprSyntax(data)
    case .optionalChainingExpr:
      visitImplOptionalChainingExprSyntax(data)
    case .forcedValueExpr:
      visitImplForcedValueExprSyntax(data)
    case .postfixUnaryExpr:
      visitImplPostfixUnaryExprSyntax(data)
    case .specializeExpr:
      visitImplSpecializeExprSyntax(data)
    case .stringSegment:
      visitImplStringSegmentSyntax(data)
    case .expressionSegment:
      visitImplExpressionSegmentSyntax(data)
    case .stringLiteralExpr:
      visitImplStringLiteralExprSyntax(data)
    case .keyPathExpr:
      visitImplKeyPathExprSyntax(data)
    case .keyPathBaseExpr:
      visitImplKeyPathBaseExprSyntax(data)
    case .objcNamePiece:
      visitImplObjcNamePieceSyntax(data)
    case .objcName:
      visitImplObjcNameSyntax(data)
    case .objcKeyPathExpr:
      visitImplObjcKeyPathExprSyntax(data)
    case .objcSelectorExpr:
      visitImplObjcSelectorExprSyntax(data)
    case .editorPlaceholderExpr:
      visitImplEditorPlaceholderExprSyntax(data)
    case .objectLiteralExpr:
      visitImplObjectLiteralExprSyntax(data)
    case .typeInitializerClause:
      visitImplTypeInitializerClauseSyntax(data)
    case .typealiasDecl:
      visitImplTypealiasDeclSyntax(data)
    case .associatedtypeDecl:
      visitImplAssociatedtypeDeclSyntax(data)
    case .functionParameterList:
      visitImplFunctionParameterListSyntax(data)
    case .parameterClause:
      visitImplParameterClauseSyntax(data)
    case .returnClause:
      visitImplReturnClauseSyntax(data)
    case .functionSignature:
      visitImplFunctionSignatureSyntax(data)
    case .ifConfigClause:
      visitImplIfConfigClauseSyntax(data)
    case .ifConfigClauseList:
      visitImplIfConfigClauseListSyntax(data)
    case .ifConfigDecl:
      visitImplIfConfigDeclSyntax(data)
    case .poundErrorDecl:
      visitImplPoundErrorDeclSyntax(data)
    case .poundWarningDecl:
      visitImplPoundWarningDeclSyntax(data)
    case .poundSourceLocation:
      visitImplPoundSourceLocationSyntax(data)
    case .poundSourceLocationArgs:
      visitImplPoundSourceLocationArgsSyntax(data)
    case .declModifier:
      visitImplDeclModifierSyntax(data)
    case .inheritedType:
      visitImplInheritedTypeSyntax(data)
    case .inheritedTypeList:
      visitImplInheritedTypeListSyntax(data)
    case .typeInheritanceClause:
      visitImplTypeInheritanceClauseSyntax(data)
    case .classDecl:
      visitImplClassDeclSyntax(data)
    case .structDecl:
      visitImplStructDeclSyntax(data)
    case .protocolDecl:
      visitImplProtocolDeclSyntax(data)
    case .extensionDecl:
      visitImplExtensionDeclSyntax(data)
    case .memberDeclBlock:
      visitImplMemberDeclBlockSyntax(data)
    case .memberDeclList:
      visitImplMemberDeclListSyntax(data)
    case .memberDeclListItem:
      visitImplMemberDeclListItemSyntax(data)
    case .sourceFile:
      visitImplSourceFileSyntax(data)
    case .initializerClause:
      visitImplInitializerClauseSyntax(data)
    case .functionParameter:
      visitImplFunctionParameterSyntax(data)
    case .modifierList:
      visitImplModifierListSyntax(data)
    case .functionDecl:
      visitImplFunctionDeclSyntax(data)
    case .initializerDecl:
      visitImplInitializerDeclSyntax(data)
    case .deinitializerDecl:
      visitImplDeinitializerDeclSyntax(data)
    case .subscriptDecl:
      visitImplSubscriptDeclSyntax(data)
    case .accessLevelModifier:
      visitImplAccessLevelModifierSyntax(data)
    case .accessPathComponent:
      visitImplAccessPathComponentSyntax(data)
    case .accessPath:
      visitImplAccessPathSyntax(data)
    case .importDecl:
      visitImplImportDeclSyntax(data)
    case .accessorParameter:
      visitImplAccessorParameterSyntax(data)
    case .accessorDecl:
      visitImplAccessorDeclSyntax(data)
    case .accessorList:
      visitImplAccessorListSyntax(data)
    case .accessorBlock:
      visitImplAccessorBlockSyntax(data)
    case .patternBinding:
      visitImplPatternBindingSyntax(data)
    case .patternBindingList:
      visitImplPatternBindingListSyntax(data)
    case .variableDecl:
      visitImplVariableDeclSyntax(data)
    case .enumCaseElement:
      visitImplEnumCaseElementSyntax(data)
    case .enumCaseElementList:
      visitImplEnumCaseElementListSyntax(data)
    case .enumCaseDecl:
      visitImplEnumCaseDeclSyntax(data)
    case .enumDecl:
      visitImplEnumDeclSyntax(data)
    case .operatorDecl:
      visitImplOperatorDeclSyntax(data)
    case .identifierList:
      visitImplIdentifierListSyntax(data)
    case .operatorPrecedenceAndTypes:
      visitImplOperatorPrecedenceAndTypesSyntax(data)
    case .precedenceGroupDecl:
      visitImplPrecedenceGroupDeclSyntax(data)
    case .precedenceGroupAttributeList:
      visitImplPrecedenceGroupAttributeListSyntax(data)
    case .precedenceGroupRelation:
      visitImplPrecedenceGroupRelationSyntax(data)
    case .precedenceGroupNameList:
      visitImplPrecedenceGroupNameListSyntax(data)
    case .precedenceGroupNameElement:
      visitImplPrecedenceGroupNameElementSyntax(data)
    case .precedenceGroupAssignment:
      visitImplPrecedenceGroupAssignmentSyntax(data)
    case .precedenceGroupAssociativity:
      visitImplPrecedenceGroupAssociativitySyntax(data)
    case .tokenList:
      visitImplTokenListSyntax(data)
    case .nonEmptyTokenList:
      visitImplNonEmptyTokenListSyntax(data)
    case .customAttribute:
      visitImplCustomAttributeSyntax(data)
    case .attribute:
      visitImplAttributeSyntax(data)
    case .attributeList:
      visitImplAttributeListSyntax(data)
    case .specializeAttributeSpecList:
      visitImplSpecializeAttributeSpecListSyntax(data)
    case .labeledSpecializeEntry:
      visitImplLabeledSpecializeEntrySyntax(data)
    case .namedAttributeStringArgument:
      visitImplNamedAttributeStringArgumentSyntax(data)
    case .declName:
      visitImplDeclNameSyntax(data)
    case .implementsAttributeArguments:
      visitImplImplementsAttributeArgumentsSyntax(data)
    case .objCSelectorPiece:
      visitImplObjCSelectorPieceSyntax(data)
    case .objCSelector:
      visitImplObjCSelectorSyntax(data)
    case .differentiableAttributeArguments:
      visitImplDifferentiableAttributeArgumentsSyntax(data)
    case .differentiationParamsClause:
      visitImplDifferentiationParamsClauseSyntax(data)
    case .differentiationParams:
      visitImplDifferentiationParamsSyntax(data)
    case .differentiationParamList:
      visitImplDifferentiationParamListSyntax(data)
    case .differentiationParam:
      visitImplDifferentiationParamSyntax(data)
    case .differentiableAttributeFuncSpecifier:
      visitImplDifferentiableAttributeFuncSpecifierSyntax(data)
    case .derivativeRegistrationAttributeArguments:
      visitImplDerivativeRegistrationAttributeArgumentsSyntax(data)
    case .qualifiedDeclName:
      visitImplQualifiedDeclNameSyntax(data)
    case .functionDeclName:
      visitImplFunctionDeclNameSyntax(data)
    case .continueStmt:
      visitImplContinueStmtSyntax(data)
    case .whileStmt:
      visitImplWhileStmtSyntax(data)
    case .deferStmt:
      visitImplDeferStmtSyntax(data)
    case .expressionStmt:
      visitImplExpressionStmtSyntax(data)
    case .switchCaseList:
      visitImplSwitchCaseListSyntax(data)
    case .repeatWhileStmt:
      visitImplRepeatWhileStmtSyntax(data)
    case .guardStmt:
      visitImplGuardStmtSyntax(data)
    case .whereClause:
      visitImplWhereClauseSyntax(data)
    case .forInStmt:
      visitImplForInStmtSyntax(data)
    case .switchStmt:
      visitImplSwitchStmtSyntax(data)
    case .catchClauseList:
      visitImplCatchClauseListSyntax(data)
    case .doStmt:
      visitImplDoStmtSyntax(data)
    case .returnStmt:
      visitImplReturnStmtSyntax(data)
    case .yieldStmt:
      visitImplYieldStmtSyntax(data)
    case .yieldList:
      visitImplYieldListSyntax(data)
    case .fallthroughStmt:
      visitImplFallthroughStmtSyntax(data)
    case .breakStmt:
      visitImplBreakStmtSyntax(data)
    case .caseItemList:
      visitImplCaseItemListSyntax(data)
    case .conditionElement:
      visitImplConditionElementSyntax(data)
    case .availabilityCondition:
      visitImplAvailabilityConditionSyntax(data)
    case .matchingPatternCondition:
      visitImplMatchingPatternConditionSyntax(data)
    case .optionalBindingCondition:
      visitImplOptionalBindingConditionSyntax(data)
    case .conditionElementList:
      visitImplConditionElementListSyntax(data)
    case .declarationStmt:
      visitImplDeclarationStmtSyntax(data)
    case .throwStmt:
      visitImplThrowStmtSyntax(data)
    case .ifStmt:
      visitImplIfStmtSyntax(data)
    case .elseIfContinuation:
      visitImplElseIfContinuationSyntax(data)
    case .elseBlock:
      visitImplElseBlockSyntax(data)
    case .switchCase:
      visitImplSwitchCaseSyntax(data)
    case .switchDefaultLabel:
      visitImplSwitchDefaultLabelSyntax(data)
    case .caseItem:
      visitImplCaseItemSyntax(data)
    case .switchCaseLabel:
      visitImplSwitchCaseLabelSyntax(data)
    case .catchClause:
      visitImplCatchClauseSyntax(data)
    case .poundAssertStmt:
      visitImplPoundAssertStmtSyntax(data)
    case .genericWhereClause:
      visitImplGenericWhereClauseSyntax(data)
    case .genericRequirementList:
      visitImplGenericRequirementListSyntax(data)
    case .genericRequirement:
      visitImplGenericRequirementSyntax(data)
    case .sameTypeRequirement:
      visitImplSameTypeRequirementSyntax(data)
    case .genericParameterList:
      visitImplGenericParameterListSyntax(data)
    case .genericParameter:
      visitImplGenericParameterSyntax(data)
    case .genericParameterClause:
      visitImplGenericParameterClauseSyntax(data)
    case .conformanceRequirement:
      visitImplConformanceRequirementSyntax(data)
    case .simpleTypeIdentifier:
      visitImplSimpleTypeIdentifierSyntax(data)
    case .memberTypeIdentifier:
      visitImplMemberTypeIdentifierSyntax(data)
    case .classRestrictionType:
      visitImplClassRestrictionTypeSyntax(data)
    case .arrayType:
      visitImplArrayTypeSyntax(data)
    case .dictionaryType:
      visitImplDictionaryTypeSyntax(data)
    case .metatypeType:
      visitImplMetatypeTypeSyntax(data)
    case .optionalType:
      visitImplOptionalTypeSyntax(data)
    case .someType:
      visitImplSomeTypeSyntax(data)
    case .implicitlyUnwrappedOptionalType:
      visitImplImplicitlyUnwrappedOptionalTypeSyntax(data)
    case .compositionTypeElement:
      visitImplCompositionTypeElementSyntax(data)
    case .compositionTypeElementList:
      visitImplCompositionTypeElementListSyntax(data)
    case .compositionType:
      visitImplCompositionTypeSyntax(data)
    case .tupleTypeElement:
      visitImplTupleTypeElementSyntax(data)
    case .tupleTypeElementList:
      visitImplTupleTypeElementListSyntax(data)
    case .tupleType:
      visitImplTupleTypeSyntax(data)
    case .functionType:
      visitImplFunctionTypeSyntax(data)
    case .attributedType:
      visitImplAttributedTypeSyntax(data)
    case .genericArgumentList:
      visitImplGenericArgumentListSyntax(data)
    case .genericArgument:
      visitImplGenericArgumentSyntax(data)
    case .genericArgumentClause:
      visitImplGenericArgumentClauseSyntax(data)
    case .typeAnnotation:
      visitImplTypeAnnotationSyntax(data)
    case .enumCasePattern:
      visitImplEnumCasePatternSyntax(data)
    case .isTypePattern:
      visitImplIsTypePatternSyntax(data)
    case .optionalPattern:
      visitImplOptionalPatternSyntax(data)
    case .identifierPattern:
      visitImplIdentifierPatternSyntax(data)
    case .asTypePattern:
      visitImplAsTypePatternSyntax(data)
    case .tuplePattern:
      visitImplTuplePatternSyntax(data)
    case .wildcardPattern:
      visitImplWildcardPatternSyntax(data)
    case .tuplePatternElement:
      visitImplTuplePatternElementSyntax(data)
    case .expressionPattern:
      visitImplExpressionPatternSyntax(data)
    case .tuplePatternElementList:
      visitImplTuplePatternElementListSyntax(data)
    case .valueBindingPattern:
      visitImplValueBindingPatternSyntax(data)
    case .availabilitySpecList:
      visitImplAvailabilitySpecListSyntax(data)
    case .availabilityArgument:
      visitImplAvailabilityArgumentSyntax(data)
    case .availabilityLabeledArgument:
      visitImplAvailabilityLabeledArgumentSyntax(data)
    case .availabilityVersionRestriction:
      visitImplAvailabilityVersionRestrictionSyntax(data)
    case .versionTuple:
      visitImplVersionTupleSyntax(data)
    }
  }

  private func visitChildren<SyntaxType: SyntaxProtocol>(_ node: SyntaxType) {
    let syntaxNode = Syntax(node)
    let parentBox = SyntaxBox(syntaxNode)
    for childRaw in PresentRawSyntaxChildren(syntaxNode) {
      let childData = SyntaxData(childRaw, parentBox: parentBox)
      visit(childData)
    }
  }
}
