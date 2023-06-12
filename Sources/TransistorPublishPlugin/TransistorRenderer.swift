import Foundation

/// A protocol that defines the interface for rendering EmbeddedTransistor HTML.
public protocol TransistorRenderer {
  /// Renders an EmbeddedTransistor into string.
  func render(transistor: EmbeddedTransistor) -> String
}
