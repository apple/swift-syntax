@_spi(RawSyntax) import SwiftSyntax
@_spi(RawSyntax) import SwiftParser
import XCTest

final class ExpressionTests: XCTestCase {
  func testTernary() {
    AssertParse("let a =")

    AssertParse("a ? b : c ? d : e")
    AssertParse("a ? b :")
  }

  func testSequence() {
    AssertParse(
       "A as? B + C -> D is E as! F ? G = 42 : H"
    )
  }

  func testClosureLiterals() {
    AssertParse(
      #"""
      { @MainActor (a: Int) async -> Int in print("hi") }
      """#
    )

    AssertParse(
      """
      { [weak self, weak weakB = b] foo in
        return 0
      }
      """
    )
  }

  func testTrailingClosures() {
    AssertParse(
      """
      var button =  View.Button[5, 4, 3
      ] {
        // comment #0
        Text("ABC")
      }
      """
    )

    AssertParse("compactMap { (parserDiag) in }")
  }

  func testSequenceExpressions() {
    AssertParse("await a()")
    AssertParse(
      """
      async let child = testNestedTaskPriority(basePri: basePri, curPri: curPri)
      await child
      """)
  }

  func testNestedTypeSpecialization() {
    AssertParse("Swift.Array<Array<Foo>>()")
  }

  func testObjectLiterals() {
    AssertParse(
      """
      #colorLiteral()
      #colorLiteral(red: 1.0)
      #colorLiteral(red: 1.0, green: 1.0)
      #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      """
    )

    AssertParse(
      """
      #imageLiteral()
      #imageLiteral(resourceName: "foo.png")
      #imageLiteral(resourceName: "foo/bar/baz/qux.png")
      #imageLiteral(resourceName: "foo/bar/baz/quux.png")
      """
    )
  }

  func testKeypathExpression() {
    AssertParse(
      #"""
      children.filter(\.type.defaultInitialization.isEmpty)
      """#
    )

    AssertParse(
      #"""
      \a
      c[#^DIAG^#
      """#,
      diagnostics: [
        DiagnosticSpec(message: "Expected ']' to end subscript")
      ]
    )

    AssertParse(
      #"""
      _ = \Lens<[Int]>.[0]
      """#)
  }

  func testBasicLiterals() {
    AssertParse(
      """
      #file
      #fileID
      (#line)
      #column
      #function
      #dsohandle
      __FILE__
      __LINE__
      __COLUMN__
      __FUNCTION__
      __DSO_HANDLE__
      """
    )
  }

  func testRegexLiteral() {
    AssertParse(
      #"""
      /(?<identifier>[[:alpha:]]\w*) = (?<hex>[0-9A-F]+)/
      """#
    )
  }

  func testInitializerExpression() {
    AssertParse("Lexer.Cursor(input: input, previous: 0)")
  }

  func testCollectionLiterals() {
    AssertParse("[Dictionary<String, Int>: Int]()")
    AssertParse("[(Int, Double) -> Bool]()")
    AssertParse("[(Int, Double) -> Bool]()")
    AssertParse("_ = [@convention(block) ()  -> Int]().count")
    AssertParse("A<@convention(c) () -> Int32>.c()")
    AssertParse("A<(@autoclosure @escaping () -> Int, Int) -> Void>.c()")
    AssertParse("_ = [String: (@escaping (A<B>) -> Int) -> Void]().keys")

    AssertParse(
      """
      [
        condition ? firstOption : secondOption,
        bar(),
      ]
      """
    )

    AssertParse(
      "[,#^DIAG^#",
      diagnostics: [
        DiagnosticSpec(message: "Expected ']' to end array")
      ]
    )

    AssertParse(
      """
      ([1:#^DIAG^#)
      """,
      diagnostics: [
        DiagnosticSpec(message: "Expected ']' to end dictionary")
      ]
    )
  }

  func testInterpolatedStringLiterals() {
    AssertParse(
      #"""
      return "Fixit: \(range.debugDescription) Text: \"\(text)\""
      """#
    )

    AssertParse(
      #"""
      "text \(array.map({ "\($0)" }).joined(separator: ",")) text"
      """#
    )

    AssertParse(
      #"""
      """
      \(gen(xx) { (x) in
          return """
          case
      """
      })
      """
      """#
    )

    AssertParse(
      #"""
      #^DIAG^#"\(()
      """#,
      diagnostics: [
        DiagnosticSpec(message: #"Extraneous '"\(()' at top level"#)
      ]
    )
  }

  func testStringLiterals() {
    AssertParse(
      #"""
      ""
      """#
    )

    AssertParse(
      #"""
      """
      """
      """#
    )

    AssertParse(
      #"""
      " >> \( abc #^DIAG^#} ) << "
      """#,
      diagnostics: [
        DiagnosticSpec(message: "Unexpected text '}' in string literal")
      ]
    )

    AssertParse(
      ##"""


      #"Hello World"#

      "Hello World"


      """##
    )

    AssertParse(
      #"""
      "\",#^DIAG^#
      """#,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"' in string literal"#)
      ]
    )

    AssertParse(
      #"""
      "(?i)\\b((?:[a-z][\\w-]+:(?:/{1,3}|[a-z0-9%])|www\\d{0,3}[.]|[a-z0-9.\\-]+[.][a-z]{2,4}/)" +
      "(?:[^\\s()<>]+|\\(([^\\s()<>]+|(\\([^\\s()<>]+\\)))*\\))+(?:\\(([^\\s()<>]+|(\\([^\\s()<>]+\\)))*" +
      "\\)|[^\\s`!()\\[\\]{};:'\".,<>?«»“”‘’]))"
      """#
    )

    AssertParse(
      #"""
      """
          Custom(custom: \(interval),\
          Expr: \(pause?.debugDescription ?? "–"), \
          PlainWithContinuation: \(countdown), \
          Plain: \(units))"
      """
      """#
    )

    AssertParse(
      #"""
      "Founded: \(Date.appleFounding, format: 📆)"
      """#
    )

    AssertParse(
        """

        ""
        """
    )

    AssertParse(
      ##"""
      #"""#
      """##
    )

    AssertParse(
      ##"""
      #"""""#
      """##
    )

    AssertParse(
      ##"""
      #"""
      multiline raw
      """#
      """##
    )

    AssertParse(
      #"""
      "\(x)"
      """#
    )

    AssertParse(
       ##"""
       """"#^DIAG^#
       """##,
       diagnostics: [
         DiagnosticSpec(message: #"Expected '"""' in string literal"#)
       ]
     )

    AssertParse(
       ##"""
       """""#^DIAG^#
       """##,
       diagnostics: [
         DiagnosticSpec(message: #"Expected '"""' in string literal"#)
       ]
     )

    // FIXME: We currently don't enforce that multiline string literal
    // contents must start on a new line
    AssertParse(
       ##"""
       """"""#^DIAG^#
       """##
     )

    AssertParse(
      ##"""
      #"#^DIAG^#
      """##,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"' in string literal"#),
        DiagnosticSpec(message: #"Expected '#' in string literal"#)
      ]
    )

    AssertParse(
      ##"""
      #"""#^DIAG^#
      """##,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"""' in string literal"#),
        DiagnosticSpec(message: #"Expected '#' in string literal"#)
      ]
    )

    AssertParse(
      ##"""
      #"""a#^DIAG^#
      """##,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"""' in string literal"#),
        DiagnosticSpec(message: #"Expected '#' in string literal"#)
      ]
    )

    AssertParse(
      ###"#^DIAG^#"\"###,
      diagnostics: [
        DiagnosticSpec(message: "Extraneous '\"\\' at top level")
      ]
    )
  }

  func testSingleQuoteStringLiteral() {
    // FIXME: This test case should produce a diagnostics
    AssertParse(
      #"""
      'red'
      """#
    )
  }

  func testStringBogusClosingDelimiters() {
    AssertParse(
      #"\\(#^DIAG^#"#,
      diagnostics: [
        DiagnosticSpec(message: "Expected ')' to end tuple")
      ]
    )

    AssertParse(
      ##"""
      #"\\("#
      """##
    )

    AssertParse(
      #"""
      "#^DIAG^#
      """#,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"' in string literal"#)
      ]
    )

    AssertParse(
      #"""
      "'#^DIAG^#
      """#,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"' in string literal"#)
      ]
    )
  }

  func testRangeSubscript() {
    AssertParse(
      """
      text[...]
      """
    )
  }

  func testMissingColonInTernary() {
    AssertParse(
      "foo ? 1#^DIAG^#",
      diagnostics: [
        DiagnosticSpec(message: "Expected ':' after '? ...' in ternary expression")
      ]
    )
  }

  func testBogusKeypathBaseRecovery() {
    AssertParse(
      #"""
      func nestThoseIfs() {\n    if false != true {\n       print "\(i)\"\n#^DIAG^#
      """#,
      diagnostics: [
        DiagnosticSpec(message: #"Expected '"' in string literal"#),
        DiagnosticSpec(message: "Expected '}' to end 'if' statement"),
        DiagnosticSpec(message: "Expected '}' to end function"),
      ]
    )

    AssertParse("#keyPath(#^DIAG^#(b:)",
                diagnostics: [
                  DiagnosticSpec(message: "Expected '' in '#keyPath' expression"),
                  DiagnosticSpec(message: "Expected ')' to end '#keyPath' expression"),
                ])
  }

  func testMissingArrowInArrowExpr() {
    AssertParse(
      "[(Int) -> #^DIAG^#throws Int]()",
      diagnostics: [
        // FIXME: We should suggest to move 'throws' in front of '->'
        DiagnosticSpec(message: "Unexpected text 'throws Int' in array")
      ]
    )

    AssertParse(
      "let _ = [Int throws #^DIAG^#Int]()",
      diagnostics: [
        DiagnosticSpec(message: "Expected '->' in array")
      ]
    )
  }

  func testBogusThrowingTernary() {
    // FIXME: This test case should produce a diagnostics
    AssertParse(
      """
      do {
        true ? () : throw opaque_error()
      } catch _ {
      }
      """
    )
  }

  func testClosureExpression() {
    AssertParse(
      """
      let :(#^DIAG_1^#..)->
      """,
      diagnostics: [
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Unexpected text '..' in function type"),
      ]
    )
  }

  func testParseArrowExpr() {
    AssertParse(
      "Foo #^ASYNC^#async ->",
      { $0.parseSequenceExpression(.basic, forDirective: false) },
      substructure: Syntax(TokenSyntax.contextualKeyword("async")),
      substructureAfterMarker: "ASYNC"
    )
  }

  func testTypeExpression() {
    AssertParse("_ = (any Sequence<Int>).self")
  }

  func testMoveExpression() {
    AssertParse("_move msg")
    AssertParse("use(_move msg)")
    AssertParse("_move msg")
    AssertParse("let b = (_move self).buffer")
  }

  func testCodeCompletionExpressions() {
    AssertParse("if !<#b1#> && !<#b2#> {}")
    AssertParse("if <#test#> {}")
    AssertParse("if <#b1#>, <#b2#> {}")
  }

  func testKeywordApplyExpression() {
    AssertParse(
      """
      optional(x: .some(23))
      optional(x: .none)
      var pair : (Int, Double) = makePair(a: 1, b: 2.5)
      """)
  }

  // N.B. This test includes zero-width characters that may not render in most
  // text editors. Be very careful editing these strings.
  //
  // See https://github.com/apple/swift/issues/51192 for more context here.
  func testFalseMultilineDelimiters() {
    AssertParse(
      ###"""
      _ = #"​"​"#

      _ = #""""#

      _ = #"""""#

      _ = #""""""#

      _ = ##""" foo # "# "##
      """###)
  }
}
