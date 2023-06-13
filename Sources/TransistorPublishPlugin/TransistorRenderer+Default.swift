import Foundation

/// A default implementation for TransistorRenderer.
/// It just provides the html string hold by the transistor.
public struct DefaultTransistorRenderer: TransistorRenderer {
  /// Initializes a new DefaultTransistorRenderer.
  public init() {}

  /// Renders an EmbeddedTransistor into string.
  public func render(transistor: EmbeddedTransistor) -> String { transistor.html }
}

/// Provides a default implementation of the `TransistorRenderer` protocol.
extension TransistorRenderer where Self == DefaultTransistorRenderer {
  /// The default `TransistorRenderer` instance.
  public static var `default`: TransistorRenderer {
    DefaultTransistorRenderer()
  }
}
