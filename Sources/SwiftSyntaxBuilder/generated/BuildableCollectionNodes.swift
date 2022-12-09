
//// Automatically Generated by generate-swiftsyntaxbuilder
//// Do Not Edit Directly!
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

/// `AccessPath` represents a collection of `AccessPathComponentSyntax`
extension AccessPath: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `AccessorList` represents a collection of `AccessorDeclSyntax`
extension AccessorList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `ArrayElementList` represents a collection of `ArrayElementSyntax`
extension ArrayElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `AttributeList` represents a collection of `Syntax`
extension AttributeList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `AvailabilitySpecList` represents a collection of `AvailabilityArgumentSyntax`
extension AvailabilitySpecList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `BackDeployVersionList` represents a collection of `BackDeployVersionArgumentSyntax`
extension BackDeployVersionList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `CaseItemList` represents a collection of `CaseItemSyntax`
extension CaseItemList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `CatchClauseList` represents a collection of `CatchClauseSyntax`
extension CatchClauseList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `CatchItemList` represents a collection of `CatchItemSyntax`
extension CatchItemList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `ClosureCaptureItemList` represents a collection of `ClosureCaptureItemSyntax`
extension ClosureCaptureItemList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `ClosureParamList` represents a collection of `ClosureParamSyntax`
extension ClosureParamList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `CodeBlockItemList` represents a collection of `CodeBlockItemSyntax`
extension CodeBlockItemList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `CompositionTypeElementList` represents a collection of `CompositionTypeElementSyntax`
extension CompositionTypeElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `ConditionElementList` represents a collection of `ConditionElementSyntax`
extension ConditionElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `DeclNameArgumentList` represents a collection of `DeclNameArgumentSyntax`
extension DeclNameArgumentList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `DesignatedTypeList` represents a collection of `DesignatedTypeElementSyntax`
extension DesignatedTypeList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `DictionaryElementList` represents a collection of `DictionaryElementSyntax`
extension DictionaryElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `DifferentiabilityParamList` represents a collection of `DifferentiabilityParamSyntax`
extension DifferentiabilityParamList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// A collection of 0 or more `EnumCaseElement`s.
extension EnumCaseElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// A list of expressions connected by operators. This list is containedby a `SequenceExprSyntax`.
extension ExprList: ExpressibleByArrayLiteral {
  public init (_ elements: [ExprSyntaxProtocol]) {
    self = ExprListSyntax(elements.map { 
      ExprSyntax(fromProtocol: $0) 
    })
  }
  
  public init (arrayLiteral elements: ExprSyntaxProtocol...) {
    self.init (elements)
  }
}

/// `FunctionParameterList` represents a collection of `FunctionParameterSyntax`
extension FunctionParameterList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `GenericArgumentList` represents a collection of `GenericArgumentSyntax`
extension GenericArgumentList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `GenericParameterList` represents a collection of `GenericParameterSyntax`
extension GenericParameterList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `GenericRequirementList` represents a collection of `GenericRequirementSyntax`
extension GenericRequirementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `IfConfigClauseList` represents a collection of `IfConfigClauseSyntax`
extension IfConfigClauseList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `InheritedTypeList` represents a collection of `InheritedTypeSyntax`
extension InheritedTypeList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `KeyPathComponentList` represents a collection of `KeyPathComponentSyntax`
extension KeyPathComponentList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `MemberDeclList` represents a collection of `MemberDeclListItemSyntax`
extension MemberDeclList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `ModifierList` represents a collection of `DeclModifierSyntax`
extension ModifierList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `MultipleTrailingClosureElementList` represents a collection of `MultipleTrailingClosureElementSyntax`
extension MultipleTrailingClosureElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `NonEmptyTokenList` represents a collection of `TokenSyntax`
extension NonEmptyTokenList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `ObjCSelector` represents a collection of `ObjCSelectorPieceSyntax`
extension ObjCSelector: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `PatternBindingList` represents a collection of `PatternBindingSyntax`
extension PatternBindingList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `PrecedenceGroupAttributeList` represents a collection of `Syntax`
extension PrecedenceGroupAttributeList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `PrecedenceGroupNameList` represents a collection of `PrecedenceGroupNameElementSyntax`
extension PrecedenceGroupNameList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `PrimaryAssociatedTypeList` represents a collection of `PrimaryAssociatedTypeSyntax`
extension PrimaryAssociatedTypeList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// A collection of arguments for the `@_specialize` attribute
extension SpecializeAttributeSpecList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `StringLiteralSegments` represents a collection of `Syntax`
extension StringLiteralSegments: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `SwitchCaseList` represents a collection of `Syntax`
extension SwitchCaseList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `TokenList` represents a collection of `TokenSyntax`
extension TokenList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `TupleExprElementList` represents a collection of `TupleExprElementSyntax`
extension TupleExprElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `TuplePatternElementList` represents a collection of `TuplePatternElementSyntax`
extension TuplePatternElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// `TupleTypeElementList` represents a collection of `TupleTypeElementSyntax`
extension TupleTypeElementList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}

/// A collection of syntax nodes that occurred in the source code butcould not be used to form a valid syntax tree.
extension UnexpectedNodes: ExpressibleByArrayLiteral {
  public init (_ elements: [SyntaxProtocol]) {
    self = UnexpectedNodesSyntax(elements.map { 
      Syntax(fromProtocol: $0) 
    })
  }
  
  public init (arrayLiteral elements: SyntaxProtocol...) {
    self.init (elements)
  }
}

/// `YieldExprList` represents a collection of `YieldExprListElementSyntax`
extension YieldExprList: ExpressibleByArrayLiteral {
  public init (arrayLiteral elements: Element...) {
    self.init (elements)
  }
}
