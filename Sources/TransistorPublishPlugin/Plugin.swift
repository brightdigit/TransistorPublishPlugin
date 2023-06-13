import Foundation
import Ink
import Publish

/// A plugin for Publish that allows you to embed Transistor podcasts in your blog posts.
public extension Plugin {
  /// Creates a new Transistor plugin with the specified renderer.
  ///
  /// - Parameter renderer: The renderer to use for rendering Transistor blockquote.
  /// - Returns: A new Transistor plugin.
  static func transistor(
    renderer: TransistorRenderer = .default
  ) -> Self {
    Plugin(name: "Transistor") { context in
      context.markdownParser.addModifier(.transistorBlockQuote(using: renderer))
    }
  }
}
