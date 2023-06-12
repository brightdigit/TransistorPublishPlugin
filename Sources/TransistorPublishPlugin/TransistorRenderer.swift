import Foundation

/// A default implementation for TransistorRenderer.
/// It just provides the html string hold by the transistor.
public struct DefaultTransistorRenderer: TransistorRenderer {
  /// Initializes a new DefaultTransistorRenderer.
  public init() {}

  /// Renders an EmbeddedTransistor into string.
  public func render(transistor: EmbeddedTransistor) -> String { transistor.html }
}

/// A protocol that defines the interface for rendering EmbeddedTransistor HTML.
public protocol TransistorRenderer {
  /// Renders an EmbeddedTransistor into string.
  func render(transistor: EmbeddedTransistor) -> String
}

/// Provides a default implementation of the `TransistorRenderer` protocol.
public extension TransistorRenderer where Self == DefaultTransistorRenderer {
  /// The default `TransistorRenderer` instance.
  static var `default`: TransistorRenderer {
    DefaultTransistorRenderer()
  }
}
