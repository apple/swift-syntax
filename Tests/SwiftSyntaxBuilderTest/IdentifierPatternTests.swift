import XCTest
import SwiftSyntax
import SwiftSyntaxBuilder

final class IdentifierPatternTests: XCTestCase {
  func testStringLiteral() {
    let leadingTrivia = Trivia.garbageText("␣")

    let testCases: [UInt: (ExpressibleAsIdentifierPattern, String)] = [
      #line: (IdentifierPattern(identifier: .identifier("Test")), "␣Test"),
      #line: (IdentifierPattern(stringLiteral: "Test"), "␣Test"),
      #line: (IdentifierPattern("Test"), "␣Test"),
      #line: ("Test", "␣Test")
    ]

    for (line, testCase) in testCases {
      let (builder, expected) = testCase
      let identifierPattern = builder.createIdentifierPattern()
      let syntax = identifierPattern.buildSyntax(format: Format(), leadingTrivia: leadingTrivia)

      var text = ""
      syntax.write(to: &text)

      XCTAssertEqual(text, expected, line: line)
    }
  }
}
