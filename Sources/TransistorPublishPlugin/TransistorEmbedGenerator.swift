import Foundation

/// A type that generates an EmbeddedTransistor from a URL.
public struct TransistorEmbedGenerator {
  /// The URL of the Transistor podcast.
  public let transistorURL: URL

  /// Initializes a new TransistorEmbedGenerator with the specified URL.
  public init(url: URL) {
    transistorURL = url
  }

  /// Generates an EmbeddedTransistor from the URL.
  public func generate() -> EmbeddedTransistor {
    EmbeddedTransistor(html: html(from: transistorURL.lastPathComponent))
  }

  /// Creates an HTML embed code for a podcast id.
  private func html(from id: String) -> String {
    // swiftlint:disable line_length
    """
    <iframe width="100%" height="180" frameborder="no" scrolling="no" seamless src="https://share.transistor.fm/e/\(id)"></iframe>
    """
    // swiftlint:enable line_length
  }
}
