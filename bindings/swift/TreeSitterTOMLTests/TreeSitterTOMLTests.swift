import XCTest
import SwiftTreeSitter
import TreeSitterTOML

final class TreeSitterTOMLTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_toml())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading TOML grammar")
    }
}
