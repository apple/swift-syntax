import XCTest
import SwiftSyntax
import SwiftSyntaxBuilder

final class ProtocolDeclTests: XCTestCase {
  func testProtocolDecl() {
    let returnType = ArrayType(elementType: "DeclSyntax")
    let input = ParameterClause(parameterListBuilder: {
      FunctionParameter(firstName: .identifier("format"), colon: .colon, type: "Format", trailingComma: .comma, attributesBuilder: {})
      FunctionParameter(firstName: .identifier("leadingTrivia"), colon: .colon, type: OptionalType(wrappedType: "Trivia"), attributesBuilder: {})
    })
    let functionSignature = FunctionSignature(input: input, output: returnType)

    let buildable = ProtocolDecl(attributes: AttributeList([TokenSyntax.public]), identifier: "DeclListBuildable") {
      FunctionDecl(modifiers: nil, identifier: .identifier("buildDeclList"), signature: functionSignature, body: nil)
    }

    let syntax = buildable.buildSyntax(format: Format())

    var text = ""
    syntax.write(to: &text)

    XCTAssertEqual(text, """
    public protocol DeclListBuildable{
        func buildDeclList(format: Format, leadingTrivia: Trivia?)-> [DeclSyntax]
    }
    """)
  }
}
