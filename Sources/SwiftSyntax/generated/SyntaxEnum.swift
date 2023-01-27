

//// Automatically Generated by generate-swiftsyntax
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

/// Enum to exhaustively switch over all different syntax nodes.
@frozen // FIXME: Not actually stable, works around a miscompile
public enum SyntaxEnum {
  case token(TokenSyntax)
  
  case accessPathComponent(AccessPathComponentSyntax)
  
  case accessPath(AccessPathSyntax)
  
  case accessorBlock(AccessorBlockSyntax)
  
  case accessorDecl(AccessorDeclSyntax)
  
  case accessorList(AccessorListSyntax)
  
  case accessorParameter(AccessorParameterSyntax)
  
  case actorDecl(ActorDeclSyntax)
  
  case arrayElementList(ArrayElementListSyntax)
  
  case arrayElement(ArrayElementSyntax)
  
  case arrayExpr(ArrayExprSyntax)
  
  case arrayType(ArrayTypeSyntax)
  
  case arrowExpr(ArrowExprSyntax)
  
  case asExpr(AsExprSyntax)
  
  case assignmentExpr(AssignmentExprSyntax)
  
  case associatedtypeDecl(AssociatedtypeDeclSyntax)
  
  case attributeList(AttributeListSyntax)
  
  case attribute(AttributeSyntax)
  
  case attributedType(AttributedTypeSyntax)
  
  case availabilityArgument(AvailabilityArgumentSyntax)
  
  case availabilityCondition(AvailabilityConditionSyntax)
  
  case availabilityEntry(AvailabilityEntrySyntax)
  
  case availabilityLabeledArgument(AvailabilityLabeledArgumentSyntax)
  
  case availabilitySpecList(AvailabilitySpecListSyntax)
  
  case availabilityVersionRestrictionListEntry(AvailabilityVersionRestrictionListEntrySyntax)
  
  case availabilityVersionRestrictionList(AvailabilityVersionRestrictionListSyntax)
  
  case availabilityVersionRestriction(AvailabilityVersionRestrictionSyntax)
  
  case awaitExpr(AwaitExprSyntax)
  
  case backDeployAttributeSpecList(BackDeployAttributeSpecListSyntax)
  
  case binaryOperatorExpr(BinaryOperatorExprSyntax)
  
  case booleanLiteralExpr(BooleanLiteralExprSyntax)
  
  case borrowExpr(BorrowExprSyntax)
  
  case breakStmt(BreakStmtSyntax)
  
  case caseItemList(CaseItemListSyntax)
  
  case caseItem(CaseItemSyntax)
  
  case catchClauseList(CatchClauseListSyntax)
  
  case catchClause(CatchClauseSyntax)
  
  case catchItemList(CatchItemListSyntax)
  
  case catchItem(CatchItemSyntax)
  
  case classDecl(ClassDeclSyntax)
  
  case classRestrictionType(ClassRestrictionTypeSyntax)
  
  case closureCaptureItemList(ClosureCaptureItemListSyntax)
  
  case closureCaptureItemSpecifier(ClosureCaptureItemSpecifierSyntax)
  
  case closureCaptureItem(ClosureCaptureItemSyntax)
  
  case closureCaptureSignature(ClosureCaptureSignatureSyntax)
  
  case closureExpr(ClosureExprSyntax)
  
  case closureParamList(ClosureParamListSyntax)
  
  case closureParam(ClosureParamSyntax)
  
  case closureSignature(ClosureSignatureSyntax)
  
  case codeBlockItemList(CodeBlockItemListSyntax)
  
  case codeBlockItem(CodeBlockItemSyntax)
  
  case codeBlock(CodeBlockSyntax)
  
  case compositionTypeElementList(CompositionTypeElementListSyntax)
  
  case compositionTypeElement(CompositionTypeElementSyntax)
  
  case compositionType(CompositionTypeSyntax)
  
  case conditionElementList(ConditionElementListSyntax)
  
  case conditionElement(ConditionElementSyntax)
  
  case conformanceRequirement(ConformanceRequirementSyntax)
  
  case constrainedSugarType(ConstrainedSugarTypeSyntax)
  
  case continueStmt(ContinueStmtSyntax)
  
  case conventionAttributeArguments(ConventionAttributeArgumentsSyntax)
  
  case conventionWitnessMethodAttributeArguments(ConventionWitnessMethodAttributeArgumentsSyntax)
  
  case declEffectSpecifiers(DeclEffectSpecifiersSyntax)
  
  case declModifierDetail(DeclModifierDetailSyntax)
  
  case declModifier(DeclModifierSyntax)
  
  case declNameArgumentList(DeclNameArgumentListSyntax)
  
  case declNameArgument(DeclNameArgumentSyntax)
  
  case declNameArguments(DeclNameArgumentsSyntax)
  
  case declName(DeclNameSyntax)
  
  case deferStmt(DeferStmtSyntax)
  
  case deinitializerDecl(DeinitializerDeclSyntax)
  
  case derivativeRegistrationAttributeArguments(DerivativeRegistrationAttributeArgumentsSyntax)
  
  case designatedTypeElement(DesignatedTypeElementSyntax)
  
  case designatedTypeList(DesignatedTypeListSyntax)
  
  case dictionaryElementList(DictionaryElementListSyntax)
  
  case dictionaryElement(DictionaryElementSyntax)
  
  case dictionaryExpr(DictionaryExprSyntax)
  
  case dictionaryType(DictionaryTypeSyntax)
  
  case differentiabilityParamList(DifferentiabilityParamListSyntax)
  
  case differentiabilityParam(DifferentiabilityParamSyntax)
  
  case differentiabilityParamsClause(DifferentiabilityParamsClauseSyntax)
  
  case differentiabilityParams(DifferentiabilityParamsSyntax)
  
  case differentiableAttributeArguments(DifferentiableAttributeArgumentsSyntax)
  
  case discardAssignmentExpr(DiscardAssignmentExprSyntax)
  
  case doStmt(DoStmtSyntax)
  
  case documentationAttributeArgument(DocumentationAttributeArgumentSyntax)
  
  case documentationAttributeArguments(DocumentationAttributeArgumentsSyntax)
  
  case dynamicReplacementArguments(DynamicReplacementArgumentsSyntax)
  
  case editorPlaceholderDecl(EditorPlaceholderDeclSyntax)
  
  case editorPlaceholderExpr(EditorPlaceholderExprSyntax)
  
  case effectsArguments(EffectsArgumentsSyntax)
  
  case enumCaseDecl(EnumCaseDeclSyntax)
  
  case enumCaseElementList(EnumCaseElementListSyntax)
  
  case enumCaseElement(EnumCaseElementSyntax)
  
  case enumDecl(EnumDeclSyntax)
  
  case exposeAttributeArguments(ExposeAttributeArgumentsSyntax)
  
  case exprList(ExprListSyntax)
  
  case expressionPattern(ExpressionPatternSyntax)
  
  case expressionSegment(ExpressionSegmentSyntax)
  
  case extensionDecl(ExtensionDeclSyntax)
  
  case fallthroughStmt(FallthroughStmtSyntax)
  
  case floatLiteralExpr(FloatLiteralExprSyntax)
  
  case forInStmt(ForInStmtSyntax)
  
  case forcedValueExpr(ForcedValueExprSyntax)
  
  case functionCallExpr(FunctionCallExprSyntax)
  
  case functionDecl(FunctionDeclSyntax)
  
  case functionParameterList(FunctionParameterListSyntax)
  
  case functionParameter(FunctionParameterSyntax)
  
  case functionSignature(FunctionSignatureSyntax)
  
  case functionType(FunctionTypeSyntax)
  
  case genericArgumentClause(GenericArgumentClauseSyntax)
  
  case genericArgumentList(GenericArgumentListSyntax)
  
  case genericArgument(GenericArgumentSyntax)
  
  case genericParameterClause(GenericParameterClauseSyntax)
  
  case genericParameterList(GenericParameterListSyntax)
  
  case genericParameter(GenericParameterSyntax)
  
  case genericRequirementList(GenericRequirementListSyntax)
  
  case genericRequirement(GenericRequirementSyntax)
  
  case genericWhereClause(GenericWhereClauseSyntax)
  
  case guardStmt(GuardStmtSyntax)
  
  case hasSymbolCondition(HasSymbolConditionSyntax)
  
  case identifierExpr(IdentifierExprSyntax)
  
  case identifierPattern(IdentifierPatternSyntax)
  
  case ifConfigClauseList(IfConfigClauseListSyntax)
  
  case ifConfigClause(IfConfigClauseSyntax)
  
  case ifConfigDecl(IfConfigDeclSyntax)
  
  case ifStmt(IfStmtSyntax)
  
  case implementsAttributeArguments(ImplementsAttributeArgumentsSyntax)
  
  case implicitlyUnwrappedOptionalType(ImplicitlyUnwrappedOptionalTypeSyntax)
  
  case importDecl(ImportDeclSyntax)
  
  case inOutExpr(InOutExprSyntax)
  
  case infixOperatorExpr(InfixOperatorExprSyntax)
  
  case inheritedTypeList(InheritedTypeListSyntax)
  
  case inheritedType(InheritedTypeSyntax)
  
  case initializerClause(InitializerClauseSyntax)
  
  case initializerDecl(InitializerDeclSyntax)
  
  case integerLiteralExpr(IntegerLiteralExprSyntax)
  
  case isExpr(IsExprSyntax)
  
  case isTypePattern(IsTypePatternSyntax)
  
  case keyPathComponentList(KeyPathComponentListSyntax)
  
  case keyPathComponent(KeyPathComponentSyntax)
  
  case keyPathExpr(KeyPathExprSyntax)
  
  case keyPathOptionalComponent(KeyPathOptionalComponentSyntax)
  
  case keyPathPropertyComponent(KeyPathPropertyComponentSyntax)
  
  case keyPathSubscriptComponent(KeyPathSubscriptComponentSyntax)
  
  case labeledSpecializeEntry(LabeledSpecializeEntrySyntax)
  
  case labeledStmt(LabeledStmtSyntax)
  
  case layoutRequirement(LayoutRequirementSyntax)
  
  case macroDecl(MacroDeclSyntax)
  
  case macroExpansionDecl(MacroExpansionDeclSyntax)
  
  case macroExpansionExpr(MacroExpansionExprSyntax)
  
  case matchingPatternCondition(MatchingPatternConditionSyntax)
  
  case memberAccessExpr(MemberAccessExprSyntax)
  
  case memberDeclBlock(MemberDeclBlockSyntax)
  
  case memberDeclListItem(MemberDeclListItemSyntax)
  
  case memberDeclList(MemberDeclListSyntax)
  
  case memberTypeIdentifier(MemberTypeIdentifierSyntax)
  
  case metatypeType(MetatypeTypeSyntax)
  
  case missingDecl(MissingDeclSyntax)
  
  case missingExpr(MissingExprSyntax)
  
  case missingPattern(MissingPatternSyntax)
  
  case missingStmt(MissingStmtSyntax)
  
  case missing(MissingSyntax)
  
  case missingType(MissingTypeSyntax)
  
  case modifierList(ModifierListSyntax)
  
  case moveExpr(MoveExprSyntax)
  
  case multipleTrailingClosureElementList(MultipleTrailingClosureElementListSyntax)
  
  case multipleTrailingClosureElement(MultipleTrailingClosureElementSyntax)
  
  case namedOpaqueReturnType(NamedOpaqueReturnTypeSyntax)
  
  case nilLiteralExpr(NilLiteralExprSyntax)
  
  case objCSelectorPiece(ObjCSelectorPieceSyntax)
  
  case objCSelector(ObjCSelectorSyntax)
  
  case opaqueReturnTypeOfAttributeArguments(OpaqueReturnTypeOfAttributeArgumentsSyntax)
  
  case operatorDecl(OperatorDeclSyntax)
  
  case operatorPrecedenceAndTypes(OperatorPrecedenceAndTypesSyntax)
  
  case optionalBindingCondition(OptionalBindingConditionSyntax)
  
  case optionalChainingExpr(OptionalChainingExprSyntax)
  
  case optionalType(OptionalTypeSyntax)
  
  case originallyDefinedInArguments(OriginallyDefinedInArgumentsSyntax)
  
  case packElementExpr(PackElementExprSyntax)
  
  case packExpansionType(PackExpansionTypeSyntax)
  
  case packReferenceType(PackReferenceTypeSyntax)
  
  case parameterClause(ParameterClauseSyntax)
  
  case patternBindingList(PatternBindingListSyntax)
  
  case patternBinding(PatternBindingSyntax)
  
  case postfixIfConfigExpr(PostfixIfConfigExprSyntax)
  
  case postfixUnaryExpr(PostfixUnaryExprSyntax)
  
  case poundAssertStmt(PoundAssertStmtSyntax)
  
  case poundErrorDecl(PoundErrorDeclSyntax)
  
  case poundSourceLocationArgs(PoundSourceLocationArgsSyntax)
  
  case poundSourceLocation(PoundSourceLocationSyntax)
  
  case poundWarningDecl(PoundWarningDeclSyntax)
  
  case precedenceGroupAssignment(PrecedenceGroupAssignmentSyntax)
  
  case precedenceGroupAssociativity(PrecedenceGroupAssociativitySyntax)
  
  case precedenceGroupAttributeList(PrecedenceGroupAttributeListSyntax)
  
  case precedenceGroupDecl(PrecedenceGroupDeclSyntax)
  
  case precedenceGroupNameElement(PrecedenceGroupNameElementSyntax)
  
  case precedenceGroupNameList(PrecedenceGroupNameListSyntax)
  
  case precedenceGroupRelation(PrecedenceGroupRelationSyntax)
  
  case prefixOperatorExpr(PrefixOperatorExprSyntax)
  
  case primaryAssociatedTypeClause(PrimaryAssociatedTypeClauseSyntax)
  
  case primaryAssociatedTypeList(PrimaryAssociatedTypeListSyntax)
  
  case primaryAssociatedType(PrimaryAssociatedTypeSyntax)
  
  case protocolDecl(ProtocolDeclSyntax)
  
  case qualifiedDeclName(QualifiedDeclNameSyntax)
  
  case regexLiteralExpr(RegexLiteralExprSyntax)
  
  case repeatWhileStmt(RepeatWhileStmtSyntax)
  
  case returnClause(ReturnClauseSyntax)
  
  case returnStmt(ReturnStmtSyntax)
  
  case sameTypeRequirement(SameTypeRequirementSyntax)
  
  case sequenceExpr(SequenceExprSyntax)
  
  case simpleTypeIdentifier(SimpleTypeIdentifierSyntax)
  
  case sourceFile(SourceFileSyntax)
  
  case specializeAttributeSpecList(SpecializeAttributeSpecListSyntax)
  
  case specializeExpr(SpecializeExprSyntax)
  
  case stringLiteralExpr(StringLiteralExprSyntax)
  
  case stringLiteralSegments(StringLiteralSegmentsSyntax)
  
  case stringSegment(StringSegmentSyntax)
  
  case structDecl(StructDeclSyntax)
  
  case subscriptDecl(SubscriptDeclSyntax)
  
  case subscriptExpr(SubscriptExprSyntax)
  
  case superRefExpr(SuperRefExprSyntax)
  
  case switchCaseLabel(SwitchCaseLabelSyntax)
  
  case switchCaseList(SwitchCaseListSyntax)
  
  case switchCase(SwitchCaseSyntax)
  
  case switchDefaultLabel(SwitchDefaultLabelSyntax)
  
  case switchStmt(SwitchStmtSyntax)
  
  case targetFunctionEntry(TargetFunctionEntrySyntax)
  
  case ternaryExpr(TernaryExprSyntax)
  
  case throwStmt(ThrowStmtSyntax)
  
  case tryExpr(TryExprSyntax)
  
  case tupleExprElementList(TupleExprElementListSyntax)
  
  case tupleExprElement(TupleExprElementSyntax)
  
  case tupleExpr(TupleExprSyntax)
  
  case tuplePatternElementList(TuplePatternElementListSyntax)
  
  case tuplePatternElement(TuplePatternElementSyntax)
  
  case tuplePattern(TuplePatternSyntax)
  
  case tupleTypeElementList(TupleTypeElementListSyntax)
  
  case tupleTypeElement(TupleTypeElementSyntax)
  
  case tupleType(TupleTypeSyntax)
  
  case typeAnnotation(TypeAnnotationSyntax)
  
  case typeEffectSpecifiers(TypeEffectSpecifiersSyntax)
  
  case typeExpr(TypeExprSyntax)
  
  case typeInheritanceClause(TypeInheritanceClauseSyntax)
  
  case typeInitializerClause(TypeInitializerClauseSyntax)
  
  case typealiasDecl(TypealiasDeclSyntax)
  
  case unavailableFromAsyncArguments(UnavailableFromAsyncArgumentsSyntax)
  
  case underscorePrivateAttributeArguments(UnderscorePrivateAttributeArgumentsSyntax)
  
  case unexpectedNodes(UnexpectedNodesSyntax)
  
  case unresolvedAsExpr(UnresolvedAsExprSyntax)
  
  case unresolvedIsExpr(UnresolvedIsExprSyntax)
  
  case unresolvedPatternExpr(UnresolvedPatternExprSyntax)
  
  case unresolvedTernaryExpr(UnresolvedTernaryExprSyntax)
  
  case valueBindingPattern(ValueBindingPatternSyntax)
  
  case variableDecl(VariableDeclSyntax)
  
  case versionTuple(VersionTupleSyntax)
  
  case whereClause(WhereClauseSyntax)
  
  case whileStmt(WhileStmtSyntax)
  
  case wildcardPattern(WildcardPatternSyntax)
  
  case yieldExprListElement(YieldExprListElementSyntax)
  
  case yieldExprList(YieldExprListSyntax)
  
  case yieldList(YieldListSyntax)
  
  case yieldStmt(YieldStmtSyntax)
}

public extension Syntax {
  /// Get an enum that can be used to exhaustively switch over all syntax nodes.
  func `as`(_: SyntaxEnum.Type) -> SyntaxEnum {
    switch raw.kind {
    case .token: 
      return .token(TokenSyntax(self)!)
    case .accessPathComponent: 
      return .accessPathComponent(AccessPathComponentSyntax(self)!)
    case .accessPath: 
      return .accessPath(AccessPathSyntax(self)!)
    case .accessorBlock: 
      return .accessorBlock(AccessorBlockSyntax(self)!)
    case .accessorDecl: 
      return .accessorDecl(AccessorDeclSyntax(self)!)
    case .accessorList: 
      return .accessorList(AccessorListSyntax(self)!)
    case .accessorParameter: 
      return .accessorParameter(AccessorParameterSyntax(self)!)
    case .actorDecl: 
      return .actorDecl(ActorDeclSyntax(self)!)
    case .arrayElementList: 
      return .arrayElementList(ArrayElementListSyntax(self)!)
    case .arrayElement: 
      return .arrayElement(ArrayElementSyntax(self)!)
    case .arrayExpr: 
      return .arrayExpr(ArrayExprSyntax(self)!)
    case .arrayType: 
      return .arrayType(ArrayTypeSyntax(self)!)
    case .arrowExpr: 
      return .arrowExpr(ArrowExprSyntax(self)!)
    case .asExpr: 
      return .asExpr(AsExprSyntax(self)!)
    case .assignmentExpr: 
      return .assignmentExpr(AssignmentExprSyntax(self)!)
    case .associatedtypeDecl: 
      return .associatedtypeDecl(AssociatedtypeDeclSyntax(self)!)
    case .attributeList: 
      return .attributeList(AttributeListSyntax(self)!)
    case .attribute: 
      return .attribute(AttributeSyntax(self)!)
    case .attributedType: 
      return .attributedType(AttributedTypeSyntax(self)!)
    case .availabilityArgument: 
      return .availabilityArgument(AvailabilityArgumentSyntax(self)!)
    case .availabilityCondition: 
      return .availabilityCondition(AvailabilityConditionSyntax(self)!)
    case .availabilityEntry: 
      return .availabilityEntry(AvailabilityEntrySyntax(self)!)
    case .availabilityLabeledArgument: 
      return .availabilityLabeledArgument(AvailabilityLabeledArgumentSyntax(self)!)
    case .availabilitySpecList: 
      return .availabilitySpecList(AvailabilitySpecListSyntax(self)!)
    case .availabilityVersionRestrictionListEntry: 
      return .availabilityVersionRestrictionListEntry(AvailabilityVersionRestrictionListEntrySyntax(self)!)
    case .availabilityVersionRestrictionList: 
      return .availabilityVersionRestrictionList(AvailabilityVersionRestrictionListSyntax(self)!)
    case .availabilityVersionRestriction: 
      return .availabilityVersionRestriction(AvailabilityVersionRestrictionSyntax(self)!)
    case .awaitExpr: 
      return .awaitExpr(AwaitExprSyntax(self)!)
    case .backDeployAttributeSpecList: 
      return .backDeployAttributeSpecList(BackDeployAttributeSpecListSyntax(self)!)
    case .binaryOperatorExpr: 
      return .binaryOperatorExpr(BinaryOperatorExprSyntax(self)!)
    case .booleanLiteralExpr: 
      return .booleanLiteralExpr(BooleanLiteralExprSyntax(self)!)
    case .borrowExpr: 
      return .borrowExpr(BorrowExprSyntax(self)!)
    case .breakStmt: 
      return .breakStmt(BreakStmtSyntax(self)!)
    case .caseItemList: 
      return .caseItemList(CaseItemListSyntax(self)!)
    case .caseItem: 
      return .caseItem(CaseItemSyntax(self)!)
    case .catchClauseList: 
      return .catchClauseList(CatchClauseListSyntax(self)!)
    case .catchClause: 
      return .catchClause(CatchClauseSyntax(self)!)
    case .catchItemList: 
      return .catchItemList(CatchItemListSyntax(self)!)
    case .catchItem: 
      return .catchItem(CatchItemSyntax(self)!)
    case .classDecl: 
      return .classDecl(ClassDeclSyntax(self)!)
    case .classRestrictionType: 
      return .classRestrictionType(ClassRestrictionTypeSyntax(self)!)
    case .closureCaptureItemList: 
      return .closureCaptureItemList(ClosureCaptureItemListSyntax(self)!)
    case .closureCaptureItemSpecifier: 
      return .closureCaptureItemSpecifier(ClosureCaptureItemSpecifierSyntax(self)!)
    case .closureCaptureItem: 
      return .closureCaptureItem(ClosureCaptureItemSyntax(self)!)
    case .closureCaptureSignature: 
      return .closureCaptureSignature(ClosureCaptureSignatureSyntax(self)!)
    case .closureExpr: 
      return .closureExpr(ClosureExprSyntax(self)!)
    case .closureParamList: 
      return .closureParamList(ClosureParamListSyntax(self)!)
    case .closureParam: 
      return .closureParam(ClosureParamSyntax(self)!)
    case .closureSignature: 
      return .closureSignature(ClosureSignatureSyntax(self)!)
    case .codeBlockItemList: 
      return .codeBlockItemList(CodeBlockItemListSyntax(self)!)
    case .codeBlockItem: 
      return .codeBlockItem(CodeBlockItemSyntax(self)!)
    case .codeBlock: 
      return .codeBlock(CodeBlockSyntax(self)!)
    case .compositionTypeElementList: 
      return .compositionTypeElementList(CompositionTypeElementListSyntax(self)!)
    case .compositionTypeElement: 
      return .compositionTypeElement(CompositionTypeElementSyntax(self)!)
    case .compositionType: 
      return .compositionType(CompositionTypeSyntax(self)!)
    case .conditionElementList: 
      return .conditionElementList(ConditionElementListSyntax(self)!)
    case .conditionElement: 
      return .conditionElement(ConditionElementSyntax(self)!)
    case .conformanceRequirement: 
      return .conformanceRequirement(ConformanceRequirementSyntax(self)!)
    case .constrainedSugarType: 
      return .constrainedSugarType(ConstrainedSugarTypeSyntax(self)!)
    case .continueStmt: 
      return .continueStmt(ContinueStmtSyntax(self)!)
    case .conventionAttributeArguments: 
      return .conventionAttributeArguments(ConventionAttributeArgumentsSyntax(self)!)
    case .conventionWitnessMethodAttributeArguments: 
      return .conventionWitnessMethodAttributeArguments(ConventionWitnessMethodAttributeArgumentsSyntax(self)!)
    case .declEffectSpecifiers: 
      return .declEffectSpecifiers(DeclEffectSpecifiersSyntax(self)!)
    case .declModifierDetail: 
      return .declModifierDetail(DeclModifierDetailSyntax(self)!)
    case .declModifier: 
      return .declModifier(DeclModifierSyntax(self)!)
    case .declNameArgumentList: 
      return .declNameArgumentList(DeclNameArgumentListSyntax(self)!)
    case .declNameArgument: 
      return .declNameArgument(DeclNameArgumentSyntax(self)!)
    case .declNameArguments: 
      return .declNameArguments(DeclNameArgumentsSyntax(self)!)
    case .declName: 
      return .declName(DeclNameSyntax(self)!)
    case .deferStmt: 
      return .deferStmt(DeferStmtSyntax(self)!)
    case .deinitializerDecl: 
      return .deinitializerDecl(DeinitializerDeclSyntax(self)!)
    case .derivativeRegistrationAttributeArguments: 
      return .derivativeRegistrationAttributeArguments(DerivativeRegistrationAttributeArgumentsSyntax(self)!)
    case .designatedTypeElement: 
      return .designatedTypeElement(DesignatedTypeElementSyntax(self)!)
    case .designatedTypeList: 
      return .designatedTypeList(DesignatedTypeListSyntax(self)!)
    case .dictionaryElementList: 
      return .dictionaryElementList(DictionaryElementListSyntax(self)!)
    case .dictionaryElement: 
      return .dictionaryElement(DictionaryElementSyntax(self)!)
    case .dictionaryExpr: 
      return .dictionaryExpr(DictionaryExprSyntax(self)!)
    case .dictionaryType: 
      return .dictionaryType(DictionaryTypeSyntax(self)!)
    case .differentiabilityParamList: 
      return .differentiabilityParamList(DifferentiabilityParamListSyntax(self)!)
    case .differentiabilityParam: 
      return .differentiabilityParam(DifferentiabilityParamSyntax(self)!)
    case .differentiabilityParamsClause: 
      return .differentiabilityParamsClause(DifferentiabilityParamsClauseSyntax(self)!)
    case .differentiabilityParams: 
      return .differentiabilityParams(DifferentiabilityParamsSyntax(self)!)
    case .differentiableAttributeArguments: 
      return .differentiableAttributeArguments(DifferentiableAttributeArgumentsSyntax(self)!)
    case .discardAssignmentExpr: 
      return .discardAssignmentExpr(DiscardAssignmentExprSyntax(self)!)
    case .doStmt: 
      return .doStmt(DoStmtSyntax(self)!)
    case .documentationAttributeArgument: 
      return .documentationAttributeArgument(DocumentationAttributeArgumentSyntax(self)!)
    case .documentationAttributeArguments: 
      return .documentationAttributeArguments(DocumentationAttributeArgumentsSyntax(self)!)
    case .dynamicReplacementArguments: 
      return .dynamicReplacementArguments(DynamicReplacementArgumentsSyntax(self)!)
    case .editorPlaceholderDecl: 
      return .editorPlaceholderDecl(EditorPlaceholderDeclSyntax(self)!)
    case .editorPlaceholderExpr: 
      return .editorPlaceholderExpr(EditorPlaceholderExprSyntax(self)!)
    case .effectsArguments: 
      return .effectsArguments(EffectsArgumentsSyntax(self)!)
    case .enumCaseDecl: 
      return .enumCaseDecl(EnumCaseDeclSyntax(self)!)
    case .enumCaseElementList: 
      return .enumCaseElementList(EnumCaseElementListSyntax(self)!)
    case .enumCaseElement: 
      return .enumCaseElement(EnumCaseElementSyntax(self)!)
    case .enumDecl: 
      return .enumDecl(EnumDeclSyntax(self)!)
    case .exposeAttributeArguments: 
      return .exposeAttributeArguments(ExposeAttributeArgumentsSyntax(self)!)
    case .exprList: 
      return .exprList(ExprListSyntax(self)!)
    case .expressionPattern: 
      return .expressionPattern(ExpressionPatternSyntax(self)!)
    case .expressionSegment: 
      return .expressionSegment(ExpressionSegmentSyntax(self)!)
    case .extensionDecl: 
      return .extensionDecl(ExtensionDeclSyntax(self)!)
    case .fallthroughStmt: 
      return .fallthroughStmt(FallthroughStmtSyntax(self)!)
    case .floatLiteralExpr: 
      return .floatLiteralExpr(FloatLiteralExprSyntax(self)!)
    case .forInStmt: 
      return .forInStmt(ForInStmtSyntax(self)!)
    case .forcedValueExpr: 
      return .forcedValueExpr(ForcedValueExprSyntax(self)!)
    case .functionCallExpr: 
      return .functionCallExpr(FunctionCallExprSyntax(self)!)
    case .functionDecl: 
      return .functionDecl(FunctionDeclSyntax(self)!)
    case .functionParameterList: 
      return .functionParameterList(FunctionParameterListSyntax(self)!)
    case .functionParameter: 
      return .functionParameter(FunctionParameterSyntax(self)!)
    case .functionSignature: 
      return .functionSignature(FunctionSignatureSyntax(self)!)
    case .functionType: 
      return .functionType(FunctionTypeSyntax(self)!)
    case .genericArgumentClause: 
      return .genericArgumentClause(GenericArgumentClauseSyntax(self)!)
    case .genericArgumentList: 
      return .genericArgumentList(GenericArgumentListSyntax(self)!)
    case .genericArgument: 
      return .genericArgument(GenericArgumentSyntax(self)!)
    case .genericParameterClause: 
      return .genericParameterClause(GenericParameterClauseSyntax(self)!)
    case .genericParameterList: 
      return .genericParameterList(GenericParameterListSyntax(self)!)
    case .genericParameter: 
      return .genericParameter(GenericParameterSyntax(self)!)
    case .genericRequirementList: 
      return .genericRequirementList(GenericRequirementListSyntax(self)!)
    case .genericRequirement: 
      return .genericRequirement(GenericRequirementSyntax(self)!)
    case .genericWhereClause: 
      return .genericWhereClause(GenericWhereClauseSyntax(self)!)
    case .guardStmt: 
      return .guardStmt(GuardStmtSyntax(self)!)
    case .hasSymbolCondition: 
      return .hasSymbolCondition(HasSymbolConditionSyntax(self)!)
    case .identifierExpr: 
      return .identifierExpr(IdentifierExprSyntax(self)!)
    case .identifierPattern: 
      return .identifierPattern(IdentifierPatternSyntax(self)!)
    case .ifConfigClauseList: 
      return .ifConfigClauseList(IfConfigClauseListSyntax(self)!)
    case .ifConfigClause: 
      return .ifConfigClause(IfConfigClauseSyntax(self)!)
    case .ifConfigDecl: 
      return .ifConfigDecl(IfConfigDeclSyntax(self)!)
    case .ifStmt: 
      return .ifStmt(IfStmtSyntax(self)!)
    case .implementsAttributeArguments: 
      return .implementsAttributeArguments(ImplementsAttributeArgumentsSyntax(self)!)
    case .implicitlyUnwrappedOptionalType: 
      return .implicitlyUnwrappedOptionalType(ImplicitlyUnwrappedOptionalTypeSyntax(self)!)
    case .importDecl: 
      return .importDecl(ImportDeclSyntax(self)!)
    case .inOutExpr: 
      return .inOutExpr(InOutExprSyntax(self)!)
    case .infixOperatorExpr: 
      return .infixOperatorExpr(InfixOperatorExprSyntax(self)!)
    case .inheritedTypeList: 
      return .inheritedTypeList(InheritedTypeListSyntax(self)!)
    case .inheritedType: 
      return .inheritedType(InheritedTypeSyntax(self)!)
    case .initializerClause: 
      return .initializerClause(InitializerClauseSyntax(self)!)
    case .initializerDecl: 
      return .initializerDecl(InitializerDeclSyntax(self)!)
    case .integerLiteralExpr: 
      return .integerLiteralExpr(IntegerLiteralExprSyntax(self)!)
    case .isExpr: 
      return .isExpr(IsExprSyntax(self)!)
    case .isTypePattern: 
      return .isTypePattern(IsTypePatternSyntax(self)!)
    case .keyPathComponentList: 
      return .keyPathComponentList(KeyPathComponentListSyntax(self)!)
    case .keyPathComponent: 
      return .keyPathComponent(KeyPathComponentSyntax(self)!)
    case .keyPathExpr: 
      return .keyPathExpr(KeyPathExprSyntax(self)!)
    case .keyPathOptionalComponent: 
      return .keyPathOptionalComponent(KeyPathOptionalComponentSyntax(self)!)
    case .keyPathPropertyComponent: 
      return .keyPathPropertyComponent(KeyPathPropertyComponentSyntax(self)!)
    case .keyPathSubscriptComponent: 
      return .keyPathSubscriptComponent(KeyPathSubscriptComponentSyntax(self)!)
    case .labeledSpecializeEntry: 
      return .labeledSpecializeEntry(LabeledSpecializeEntrySyntax(self)!)
    case .labeledStmt: 
      return .labeledStmt(LabeledStmtSyntax(self)!)
    case .layoutRequirement: 
      return .layoutRequirement(LayoutRequirementSyntax(self)!)
    case .macroDecl: 
      return .macroDecl(MacroDeclSyntax(self)!)
    case .macroExpansionDecl: 
      return .macroExpansionDecl(MacroExpansionDeclSyntax(self)!)
    case .macroExpansionExpr: 
      return .macroExpansionExpr(MacroExpansionExprSyntax(self)!)
    case .matchingPatternCondition: 
      return .matchingPatternCondition(MatchingPatternConditionSyntax(self)!)
    case .memberAccessExpr: 
      return .memberAccessExpr(MemberAccessExprSyntax(self)!)
    case .memberDeclBlock: 
      return .memberDeclBlock(MemberDeclBlockSyntax(self)!)
    case .memberDeclListItem: 
      return .memberDeclListItem(MemberDeclListItemSyntax(self)!)
    case .memberDeclList: 
      return .memberDeclList(MemberDeclListSyntax(self)!)
    case .memberTypeIdentifier: 
      return .memberTypeIdentifier(MemberTypeIdentifierSyntax(self)!)
    case .metatypeType: 
      return .metatypeType(MetatypeTypeSyntax(self)!)
    case .missingDecl: 
      return .missingDecl(MissingDeclSyntax(self)!)
    case .missingExpr: 
      return .missingExpr(MissingExprSyntax(self)!)
    case .missingPattern: 
      return .missingPattern(MissingPatternSyntax(self)!)
    case .missingStmt: 
      return .missingStmt(MissingStmtSyntax(self)!)
    case .missing: 
      return .missing(MissingSyntax(self)!)
    case .missingType: 
      return .missingType(MissingTypeSyntax(self)!)
    case .modifierList: 
      return .modifierList(ModifierListSyntax(self)!)
    case .moveExpr: 
      return .moveExpr(MoveExprSyntax(self)!)
    case .multipleTrailingClosureElementList: 
      return .multipleTrailingClosureElementList(MultipleTrailingClosureElementListSyntax(self)!)
    case .multipleTrailingClosureElement: 
      return .multipleTrailingClosureElement(MultipleTrailingClosureElementSyntax(self)!)
    case .namedOpaqueReturnType: 
      return .namedOpaqueReturnType(NamedOpaqueReturnTypeSyntax(self)!)
    case .nilLiteralExpr: 
      return .nilLiteralExpr(NilLiteralExprSyntax(self)!)
    case .objCSelectorPiece: 
      return .objCSelectorPiece(ObjCSelectorPieceSyntax(self)!)
    case .objCSelector: 
      return .objCSelector(ObjCSelectorSyntax(self)!)
    case .opaqueReturnTypeOfAttributeArguments: 
      return .opaqueReturnTypeOfAttributeArguments(OpaqueReturnTypeOfAttributeArgumentsSyntax(self)!)
    case .operatorDecl: 
      return .operatorDecl(OperatorDeclSyntax(self)!)
    case .operatorPrecedenceAndTypes: 
      return .operatorPrecedenceAndTypes(OperatorPrecedenceAndTypesSyntax(self)!)
    case .optionalBindingCondition: 
      return .optionalBindingCondition(OptionalBindingConditionSyntax(self)!)
    case .optionalChainingExpr: 
      return .optionalChainingExpr(OptionalChainingExprSyntax(self)!)
    case .optionalType: 
      return .optionalType(OptionalTypeSyntax(self)!)
    case .originallyDefinedInArguments: 
      return .originallyDefinedInArguments(OriginallyDefinedInArgumentsSyntax(self)!)
    case .packElementExpr: 
      return .packElementExpr(PackElementExprSyntax(self)!)
    case .packExpansionType: 
      return .packExpansionType(PackExpansionTypeSyntax(self)!)
    case .packReferenceType: 
      return .packReferenceType(PackReferenceTypeSyntax(self)!)
    case .parameterClause: 
      return .parameterClause(ParameterClauseSyntax(self)!)
    case .patternBindingList: 
      return .patternBindingList(PatternBindingListSyntax(self)!)
    case .patternBinding: 
      return .patternBinding(PatternBindingSyntax(self)!)
    case .postfixIfConfigExpr: 
      return .postfixIfConfigExpr(PostfixIfConfigExprSyntax(self)!)
    case .postfixUnaryExpr: 
      return .postfixUnaryExpr(PostfixUnaryExprSyntax(self)!)
    case .poundAssertStmt: 
      return .poundAssertStmt(PoundAssertStmtSyntax(self)!)
    case .poundErrorDecl: 
      return .poundErrorDecl(PoundErrorDeclSyntax(self)!)
    case .poundSourceLocationArgs: 
      return .poundSourceLocationArgs(PoundSourceLocationArgsSyntax(self)!)
    case .poundSourceLocation: 
      return .poundSourceLocation(PoundSourceLocationSyntax(self)!)
    case .poundWarningDecl: 
      return .poundWarningDecl(PoundWarningDeclSyntax(self)!)
    case .precedenceGroupAssignment: 
      return .precedenceGroupAssignment(PrecedenceGroupAssignmentSyntax(self)!)
    case .precedenceGroupAssociativity: 
      return .precedenceGroupAssociativity(PrecedenceGroupAssociativitySyntax(self)!)
    case .precedenceGroupAttributeList: 
      return .precedenceGroupAttributeList(PrecedenceGroupAttributeListSyntax(self)!)
    case .precedenceGroupDecl: 
      return .precedenceGroupDecl(PrecedenceGroupDeclSyntax(self)!)
    case .precedenceGroupNameElement: 
      return .precedenceGroupNameElement(PrecedenceGroupNameElementSyntax(self)!)
    case .precedenceGroupNameList: 
      return .precedenceGroupNameList(PrecedenceGroupNameListSyntax(self)!)
    case .precedenceGroupRelation: 
      return .precedenceGroupRelation(PrecedenceGroupRelationSyntax(self)!)
    case .prefixOperatorExpr: 
      return .prefixOperatorExpr(PrefixOperatorExprSyntax(self)!)
    case .primaryAssociatedTypeClause: 
      return .primaryAssociatedTypeClause(PrimaryAssociatedTypeClauseSyntax(self)!)
    case .primaryAssociatedTypeList: 
      return .primaryAssociatedTypeList(PrimaryAssociatedTypeListSyntax(self)!)
    case .primaryAssociatedType: 
      return .primaryAssociatedType(PrimaryAssociatedTypeSyntax(self)!)
    case .protocolDecl: 
      return .protocolDecl(ProtocolDeclSyntax(self)!)
    case .qualifiedDeclName: 
      return .qualifiedDeclName(QualifiedDeclNameSyntax(self)!)
    case .regexLiteralExpr: 
      return .regexLiteralExpr(RegexLiteralExprSyntax(self)!)
    case .repeatWhileStmt: 
      return .repeatWhileStmt(RepeatWhileStmtSyntax(self)!)
    case .returnClause: 
      return .returnClause(ReturnClauseSyntax(self)!)
    case .returnStmt: 
      return .returnStmt(ReturnStmtSyntax(self)!)
    case .sameTypeRequirement: 
      return .sameTypeRequirement(SameTypeRequirementSyntax(self)!)
    case .sequenceExpr: 
      return .sequenceExpr(SequenceExprSyntax(self)!)
    case .simpleTypeIdentifier: 
      return .simpleTypeIdentifier(SimpleTypeIdentifierSyntax(self)!)
    case .sourceFile: 
      return .sourceFile(SourceFileSyntax(self)!)
    case .specializeAttributeSpecList: 
      return .specializeAttributeSpecList(SpecializeAttributeSpecListSyntax(self)!)
    case .specializeExpr: 
      return .specializeExpr(SpecializeExprSyntax(self)!)
    case .stringLiteralExpr: 
      return .stringLiteralExpr(StringLiteralExprSyntax(self)!)
    case .stringLiteralSegments: 
      return .stringLiteralSegments(StringLiteralSegmentsSyntax(self)!)
    case .stringSegment: 
      return .stringSegment(StringSegmentSyntax(self)!)
    case .structDecl: 
      return .structDecl(StructDeclSyntax(self)!)
    case .subscriptDecl: 
      return .subscriptDecl(SubscriptDeclSyntax(self)!)
    case .subscriptExpr: 
      return .subscriptExpr(SubscriptExprSyntax(self)!)
    case .superRefExpr: 
      return .superRefExpr(SuperRefExprSyntax(self)!)
    case .switchCaseLabel: 
      return .switchCaseLabel(SwitchCaseLabelSyntax(self)!)
    case .switchCaseList: 
      return .switchCaseList(SwitchCaseListSyntax(self)!)
    case .switchCase: 
      return .switchCase(SwitchCaseSyntax(self)!)
    case .switchDefaultLabel: 
      return .switchDefaultLabel(SwitchDefaultLabelSyntax(self)!)
    case .switchStmt: 
      return .switchStmt(SwitchStmtSyntax(self)!)
    case .targetFunctionEntry: 
      return .targetFunctionEntry(TargetFunctionEntrySyntax(self)!)
    case .ternaryExpr: 
      return .ternaryExpr(TernaryExprSyntax(self)!)
    case .throwStmt: 
      return .throwStmt(ThrowStmtSyntax(self)!)
    case .tryExpr: 
      return .tryExpr(TryExprSyntax(self)!)
    case .tupleExprElementList: 
      return .tupleExprElementList(TupleExprElementListSyntax(self)!)
    case .tupleExprElement: 
      return .tupleExprElement(TupleExprElementSyntax(self)!)
    case .tupleExpr: 
      return .tupleExpr(TupleExprSyntax(self)!)
    case .tuplePatternElementList: 
      return .tuplePatternElementList(TuplePatternElementListSyntax(self)!)
    case .tuplePatternElement: 
      return .tuplePatternElement(TuplePatternElementSyntax(self)!)
    case .tuplePattern: 
      return .tuplePattern(TuplePatternSyntax(self)!)
    case .tupleTypeElementList: 
      return .tupleTypeElementList(TupleTypeElementListSyntax(self)!)
    case .tupleTypeElement: 
      return .tupleTypeElement(TupleTypeElementSyntax(self)!)
    case .tupleType: 
      return .tupleType(TupleTypeSyntax(self)!)
    case .typeAnnotation: 
      return .typeAnnotation(TypeAnnotationSyntax(self)!)
    case .typeEffectSpecifiers: 
      return .typeEffectSpecifiers(TypeEffectSpecifiersSyntax(self)!)
    case .typeExpr: 
      return .typeExpr(TypeExprSyntax(self)!)
    case .typeInheritanceClause: 
      return .typeInheritanceClause(TypeInheritanceClauseSyntax(self)!)
    case .typeInitializerClause: 
      return .typeInitializerClause(TypeInitializerClauseSyntax(self)!)
    case .typealiasDecl: 
      return .typealiasDecl(TypealiasDeclSyntax(self)!)
    case .unavailableFromAsyncArguments: 
      return .unavailableFromAsyncArguments(UnavailableFromAsyncArgumentsSyntax(self)!)
    case .underscorePrivateAttributeArguments: 
      return .underscorePrivateAttributeArguments(UnderscorePrivateAttributeArgumentsSyntax(self)!)
    case .unexpectedNodes: 
      return .unexpectedNodes(UnexpectedNodesSyntax(self)!)
    case .unresolvedAsExpr: 
      return .unresolvedAsExpr(UnresolvedAsExprSyntax(self)!)
    case .unresolvedIsExpr: 
      return .unresolvedIsExpr(UnresolvedIsExprSyntax(self)!)
    case .unresolvedPatternExpr: 
      return .unresolvedPatternExpr(UnresolvedPatternExprSyntax(self)!)
    case .unresolvedTernaryExpr: 
      return .unresolvedTernaryExpr(UnresolvedTernaryExprSyntax(self)!)
    case .valueBindingPattern: 
      return .valueBindingPattern(ValueBindingPatternSyntax(self)!)
    case .variableDecl: 
      return .variableDecl(VariableDeclSyntax(self)!)
    case .versionTuple: 
      return .versionTuple(VersionTupleSyntax(self)!)
    case .whereClause: 
      return .whereClause(WhereClauseSyntax(self)!)
    case .whileStmt: 
      return .whileStmt(WhileStmtSyntax(self)!)
    case .wildcardPattern: 
      return .wildcardPattern(WildcardPatternSyntax(self)!)
    case .yieldExprListElement: 
      return .yieldExprListElement(YieldExprListElementSyntax(self)!)
    case .yieldExprList: 
      return .yieldExprList(YieldExprListSyntax(self)!)
    case .yieldList: 
      return .yieldList(YieldListSyntax(self)!)
    case .yieldStmt: 
      return .yieldStmt(YieldStmtSyntax(self)!)
    }
  }
}
