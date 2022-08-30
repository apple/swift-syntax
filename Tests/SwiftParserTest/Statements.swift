@_spi(RawSyntax) import SwiftSyntax
@_spi(RawSyntax) import SwiftParser
import XCTest

final class StatementTests: XCTestCase {
  func testIf() {
    AssertParse("if let x { }")

    AssertParse(
      """
      if case#^DIAG^#* ! = x {
        bar()
      }
      """,
      diagnostics: [
        DiagnosticSpec(message: "Expected '=' in pattern matching"),
        DiagnosticSpec(message: "Unexpected text '* ! = x ' found in 'if' statement"),
      ]
    )
  }

  func testNestedIfs() {
    let nest = 22
    var source = "func nestThoseIfs() {\n"
    for index in (0...nest) {
        let indent = String(repeating: "    ", count: index + 1)
        source += indent + "if false != true {\n"
        source += indent + "   print \"\\(i)\"\n"
    }

    for index in (0...nest).reversed() {
        let indent = String(repeating: "    ", count: index + 1)
        source += indent + "}\n"
    }
    source += "}"
    AssertParse(source)
  }

  func testDo() {
    AssertParse(
       """
       do {

       }
       """
    )
  }

  func testDoCatch() {
    AssertParse(
       """
       do {

       } catch {

       }
       """
    )
  }

  func testReturn() {
    AssertParse("return")

    AssertParse(
       #"""
       return "assert(\(assertChoices.joined(separator: " || ")))"
       """#
    )

    AssertParse("return true ? nil : nil")
  }

  func testSwitch() {
    AssertParse(
      """
      switch x {
      case .A, .B:
        break
      }
      """
    )

    AssertParse(
      """
      switch 0 {
      @$dollar case _:
        break
      }
      """
    )

    AssertParse(
      """
      switch x {
      case .A:
        break
      case .B:
        break
      #if NEVER
      #elseif ENABLE_C
      case .C:
        break
      #endif
      }
      """
    )
  }

  func testCStyleForLoop() {
    AssertParse(
      """
      #^DIAG^#for let x = 0; x < 10; x += 1, y += 1 {
      }
      """,
      diagnostics: [
        DiagnosticSpec(message: "C-style for statement has been removed in Swift 3", highlight: "let x = 0; x < 10; x += 1, y += 1 ")
      ]
    )
  }

  func testTopLevelCaseRecovery() {
    // FIXME: These test cases should produce diagnostics
    AssertParse(
      "/*#-editable-code Swift Platground editable area*/default/*#-end-editable-code*/"
    )

    AssertParse("case:")

    AssertParse(
      #"""
      case: { ("Hello World") }
      """#
    )
  }

  func testMissingIfClauseIntroducer() {
    // FIXME: This test case should produce a diagnostics
    AssertParse("if _ = 42 {}")
  }

  func testAttributesOnStatements() {
    // FIXME: This test case should produce a diagnostics
    AssertParse(
      """
      func test1() {
        @s return
      }
      func test2() {
        @unknown return
      }
      """
    )
  }

  func testBogusSwitchStatement() {
    // FIXME: This test case should produce a diagnostics
    AssertParse(
      """
      switch x {
        print()
      #if true
        print()
      #endif
        case .A, .B:
          break
      }
      """
    )

    AssertParse(
      """
      switch x {
      print()
      #if ENABLE_C
      case .NOT_EXIST:
        break
      case .C:
        break
      #endif
      case .A, .B:
        break
      }
      """
    )
  }

  // FIXME: This test case should produce a diagnostic
  func testBogusLineLabel() {
    AssertParse(
      """
      LABEL:
      """
    )
  }
}
