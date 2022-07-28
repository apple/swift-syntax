#if DEBUG

import XCTest
@testable import SwiftSyntax

final class BumpPtrAllocatorTests: XCTestCase {

    func testBasic() throws {
      var allocator = BumpPtrAllocator()

      let byteBuffer = allocator.allocate(byteCount: 42, alignment: 4)
      XCTAssertNotNil(byteBuffer.baseAddress)
      XCTAssertEqual(byteBuffer.count, 42)
      XCTAssertEqual(byteBuffer.baseAddress?.alignedUp(toMultipleOf: 4),
                     byteBuffer.baseAddress)

      let emptyBuffer = allocator.allocate(byteCount: 0, alignment: 8)
      XCTAssertNil(emptyBuffer.baseAddress)
      XCTAssertEqual(emptyBuffer.count, 0)

      let typedBuffer = allocator.allocate(UInt64.self, count: 12)
      XCTAssertNotNil(typedBuffer.baseAddress)
      XCTAssertEqual(typedBuffer.count, 12)
      XCTAssertEqual(UnsafeRawBufferPointer(typedBuffer).count,
                     MemoryLayout<UInt64>.stride * 12)
      XCTAssertEqual(byteBuffer.baseAddress?.alignedUp(toMultipleOf: MemoryLayout<UInt64>.alignment),
                     byteBuffer.baseAddress)

      let typedEmptyBuffer = allocator.allocate(String.self, count: 0)
      XCTAssertNil(typedEmptyBuffer.baseAddress)
      XCTAssertEqual(typedEmptyBuffer.count, 0)


      XCTAssertEqual(allocator.totalSizeAllocated,
                     42 + MemoryLayout<UInt64>.stride * 12)
    }
}

#endif
