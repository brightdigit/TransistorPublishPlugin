import Foundation

public struct DefaultTransistorRenderer: TransistorRenderer {
  public init() {}
  public func render(transistor: EmbeddedTransistor) -> String { transistor.html }
}

public protocol TransistorRenderer {
  func render(transistor: EmbeddedTransistor) -> String
}
