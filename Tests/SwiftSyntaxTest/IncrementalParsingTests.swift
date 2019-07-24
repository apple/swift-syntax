import XCTest
import SwiftSyntax

public class IncrementalParsingTests: XCTestCase {

  public static let allTests = [
    ("testIncrementalInvalid", testIncrementalInvalid),
    ("testReusedNode", testReusedNode),
  ]

  public func testIncrementalInvalid() {
    let original = "struct A { func f() {"
    let step: (String, (Int, Int, String)) =
      ("struct AA { func f() {", (8, 0, "A"))

    var tree = try! SyntaxParser.parse(source: original)
    let sourceEdit = SourceEdit(range: ByteSourceRange(offset: step.1.0, length: step.1.1), replacementLength: step.1.2.utf8.count)
    let lookup = IncrementalParseTransition(previousTree: tree, edits: [sourceEdit])
    tree = try! SyntaxParser.parse(source: step.0, parseTransition: lookup)
    XCTAssertEqual("\(tree)", step.0)
  }

  public func testReusedNode() {
    let original = "struct A {}\nstruct B {}\n"
    let step: (String, (Int, Int, String)) =
      ("struct AA {}\nstruct B {}\n", (8, 0, "A"))

    let origTree = try! SyntaxParser.parse(source: original)
    let sourceEdit = SourceEdit(range: ByteSourceRange(offset: step.1.0, length: step.1.1), replacementLength: step.1.2.utf8.count)
    let reusedNodeCollector = IncrementalParseReusedNodeCollector()
    let transition = IncrementalParseTransition(previousTree: origTree, edits: [sourceEdit], reusedNodeDelegate: reusedNodeCollector)
    let newTree = try! SyntaxParser.parse(source: step.0, parseTransition: transition)
    XCTAssertEqual("\(newTree)", step.0)

    let origStructB = origTree.statements[1]
    let newStructB = newTree.statements[1]
    XCTAssertEqual("\(origStructB)", "\nstruct B {}")
    XCTAssertEqual("\(newStructB)", "\nstruct B {}")
    XCTAssertNotEqual(origStructB, newStructB)

    XCTAssertEqual(reusedNodeCollector.rangeAndNodes.count, 1)
    if reusedNodeCollector.rangeAndNodes.count != 1 { return }
    let (reusedRange, reusedNode) = reusedNodeCollector.rangeAndNodes[0]
    XCTAssertEqual("\(reusedNode)", "\nstruct B {}")

    XCTAssertEqual(newStructB.byteRange, reusedRange)
    XCTAssertEqual(origStructB.uniqueIdentifier, reusedNode.uniqueIdentifier)
    XCTAssertEqual(origStructB, reusedNode.asSyntax as! CodeBlockItemSyntax)
    XCTAssertTrue(reusedNode.isCodeBlockItem)
    XCTAssertEqual(origStructB, reusedNode.asCodeBlockItem!)
    XCTAssertEqual(origStructB.parent!.uniqueIdentifier, reusedNode.parent!.uniqueIdentifier)
  }
}
