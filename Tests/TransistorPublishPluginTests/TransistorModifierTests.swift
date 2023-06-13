import Ink
import Publish
@testable import TransistorPublishPlugin
import XCTest

internal final class TransistorModifierTests: XCTestCase {
  private var parser: MarkdownParser = .init(modifiers: [
    .transistorBlockQuote(using: .default)
  ])

  internal func testValidTransistorBlockQuote() throws {
    let id = "395aa04c"
    let link = "https://share.transistor.fm/s/\(id)"

    let transistorBlockQuote = "> transistor \(link)"

    XCTAssertEqual(
      parser.html(from: transistorBlockQuote),
      html(from: id)
    )
  }

  internal func testInvalidBlockQuotePrefix() throws {
    let id = "395aa04c"
    let link = "https://share.transistor.fm/s/\(id)"

    let transistorBlockQuote = "tansistor \(link)"

    XCTAssertNotEqual(
      parser.html(from: transistorBlockQuote),
      html(from: id)
    )
  }

  internal func testInvalidBlockQuoteURL() throws {
    let id = "395aa04c"
    let link = "http:share.transistor.fm/s/\(id)"

    let transistorBlockQuote = "> tansistor \(link)"

    XCTAssertNotEqual(
      parser.html(from: transistorBlockQuote),
      html(from: id)
    )
  }

  // MARK: - Helpers

  private func html(from id: String) -> String {
    guard let url = URL(string: "https://share.transistor.fm/e/\(id)") else {
      fatalError("Invalid transistor URL \(id)")
    }

    let generator = TransistorEmbedGenerator(url: url)
    let transistor = generator.generate()
    return transistor.html
  }
}
