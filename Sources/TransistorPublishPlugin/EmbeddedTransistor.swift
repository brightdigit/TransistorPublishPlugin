import Foundation

/// A type for holding the HTML embed code for a Transistor podcast.
public struct EmbeddedTransistor: Hashable, Codable {
  /// The HTML embed code for a podcast id
  public let html: String
}
