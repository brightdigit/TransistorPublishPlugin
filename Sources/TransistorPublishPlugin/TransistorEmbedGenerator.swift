import Foundation

internal struct TransistorEmbedGenerator {
  internal let transistorURL: URL

  internal init(url: URL) {
    transistorURL = url
  }

  private func html(from id: String) -> String {
    """
    <iframe width="100%" height="180" frameborder="no" scrolling="no" seamless src="https://share.transistor.fm/e/\(id)"></iframe>
    """
  }

  internal func generate() -> EmbeddedTransistor {
    EmbeddedTransistor(html: html(from: transistorURL.lastPathComponent))
  }
}
