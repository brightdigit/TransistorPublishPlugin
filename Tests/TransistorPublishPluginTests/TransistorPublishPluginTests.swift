import Ink
import Publish
@testable import TransistorPublishPlugin
import XCTest

internal final class TransistorPublishPluginTests: XCTestCase {
  private var parser: MarkdownParser = .init(modifiers: [
    Modifier(target: .paragraphs) { html, _ in html },
    .transistorBlockQuote(using: .default)
  ])

  internal func testTransistorInkModifier() throws {
    let podcastId: String = "395aa04c"
    let link: String = "https://share.transistor.fm/s/\(podcastId)"

    let transistorBlockQuote = "> transistor \(link)"

    let html = parser.html(from: transistorBlockQuote)

    // swiftlint:disable line_length
    let actualEmbedCode = """
    <iframe width="100%" height="180" frameborder="no" scrolling="no" seamless src="https://share.transistor.fm/e/\(podcastId)"></iframe>
    """
    // swiftlint:enable line_length

    XCTAssertEqual(actualEmbedCode, html)
  }
}
