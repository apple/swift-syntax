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
import SyntaxSupport
import Utils

let syntaxVisitorFile = SourceFile {
  EnumDecl("""
    /// The enum describes how the SyntaxVistor should continue after visiting
    /// the current node.
    public enum SyntaxVisitorContinueKind
    """) {
    EnumCaseDecl("""
      /// The visitor should visit the descendents of the current node.
      case visitChildren
      """)
    
    EnumCaseDecl("""
      /// The visitor should avoid visiting the descendents of the current node.
      case skipChildren
      """)
  }
  
  ClassDecl("open class SyntaxVisitor") {
    VariableDecl("public let viewMode: SyntaxTreeViewMode")
    
    InitializerDecl("""
      @available(*, deprecated, message: "Use init(viewMode:) instead")
      public convenience init() {
        self.init(viewMode: .sourceAccurate)
      }
      """)

    InitializerDecl("""
      public init(viewMode: SyntaxTreeViewMode) {
        self.viewMode = viewMode
      }
      """)
    
    FunctionDecl("""
      /// Walk all nodes of the given syntax tree, calling the corresponding `visit`
      /// function for every node that is being visited.
      public func walk<SyntaxType: SyntaxProtocol>(_ node: SyntaxType) {
        visit(node.data)
      }
      """)

    for node in SYNTAX_NODES where node.isVisitable {
      FunctionDecl("""
        /// Visiting `\(raw: node.name)` specifically.
        ///   - Parameter node: the node we are visiting.
        ///   - Returns: how should we continue visiting.
        open func visit(_ node: \(raw: node.name)) -> SyntaxVisitorContinueKind {
          return .visitChildren
        }
        """)

      FunctionDecl("""
        /// The function called after visiting `\(raw: node.name)` and its descendents.
        ///   - node: the node we just finished visiting.
        open func visitPost(_ node: \(raw: node.name)) {}
        """)
    }

    FunctionDecl("""
      /// Visiting `TokenSyntax` specifically.
      ///   - Parameter node: the node we are visiting.
      ///   - Returns: how should we continue visiting.
      open func visit(_ token: TokenSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
      }
      """)

    FunctionDecl("""
      /// The function called after visiting the node and its descendents.
      ///   - node: the node we just finished visiting.
      open func visitPost(_ node: TokenSyntax) {}
      """)

    for node in NON_BASE_SYNTAX_NODES {
      FunctionDecl("""
        /// Implementation detail of doVisit(_:_:). Do not call directly.
        private func visitImpl\(raw: node.name)(_ data: SyntaxData) {
          let node = \(raw: node.name)(data)
          let needsChildren = (visit(node) == .visitChildren)
          // Avoid calling into visitChildren if possible.
          if needsChildren && !node.raw.layoutView!.children.isEmpty {
            visitChildren(node)
          }
          visitPost(node)
        }
        """)
    }

    FunctionDecl("private func visit(_ data: SyntaxData)") {
      SwitchStmt(expression: Expr("data.raw.kind")) {
        SwitchCase("case .token:") {
          VariableDecl("let node = TokenSyntax(data)")

          Expr("_ = visit(node)")
          FunctionCallExpr("""
            // No children to visit.
            visitPost(node)
            // The implementation of every generated case goes into its own function. This
            // circumvents an issue where the compiler allocates stack space for every
            // case statement next to each other in debug builds, causing it to allocate
            // ~50KB per call to this function. rdar://55929175
            """)
        }
        for node in NON_BASE_SYNTAX_NODES {
          SwitchCase("case .\(raw: node.swiftSyntaxKind):") {
            FunctionCallExpr("visitImpl\(raw: node.name)(data)")
          }
        }
      }
    }

    FunctionDecl("""
      private func visitChildren<SyntaxType: SyntaxProtocol>(_ node: SyntaxType) {
        let syntaxNode = Syntax(node)
        for childRaw in NonNilRawSyntaxChildren(syntaxNode, viewMode: viewMode) {
          let childData = SyntaxData(childRaw, parent: syntaxNode)
          visit(childData)
        }
      }
      """)
  }
}
