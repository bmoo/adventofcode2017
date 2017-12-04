import XCTest
@testable import day1

class day1Tests: XCTestCase {
    func testEmpty() {
        XCTAssertEqual(matchDigits(puzzleText: ""), 0)
    }

    func testFirst() {
        XCTAssertEqual(matchDigits(puzzleText: "1122"), 3)
    }

    func testSecond() {
        XCTAssertEqual(matchDigits(puzzleText: "1111"), 4)
    }
    func testThird() {
        XCTAssertEqual(matchDigits(puzzleText: "1234"), 0)
    }
    func testFourth() {
        XCTAssertEqual(matchDigits(puzzleText: "91212129"), 9)
    }

    static var allTests = [
        ("testEmpty", testEmpty),
        ("testFirst", testFirst),
        ("testSecond", testSecond),
        ("testThird", testThird),
        ("testFourth", testFourth),
    ]
}
