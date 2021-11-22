import XCTest
import SwiftUI
@testable import CodingStyle

final class CodingStyleTests: XCTestCase {
    @CodingStyle(style: .SnakeCase) var testSnake = "Test snake"
    @CodingStyle(style: .CamelCase) var testCamel = "Test camel"
    @CodingStyle(style: .KebabCase) var testKebab = "Test kebab"
    
    func testCodingStyleGB() throws {
        XCTAssertEqual(testSnake, "test_Snake")
        XCTAssertEqual(testCamel, "testCamel")
        XCTAssertEqual(testKebab, "test-Kebab")
    }
}
