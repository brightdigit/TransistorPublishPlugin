import Foundation
import Ink
import Publish

/// An modifier for Ink that helps rendering a Transistor blockquotes into HTML string.
public extension Modifier {
  /// Creates a new modifier.
  /// It uses a renderer to convert Transistor blockquote into HTML
  ///
  /// - Parameter renderer: The renderer to use for rendering Transistor blockquote.
  /// - Returns: A new modifier.
  static func transistorBlockQuote(using renderer: TransistorRenderer) -> Self {
    Modifier(target: .blockquotes) { html, markdown in
      // Removes the arrow > and trims any whitespaces from the markdown.
      var markdown = markdown.dropFirst().trimmingCharacters(in: .whitespaces)

      let prefix = "transistor "

      guard markdown.hasPrefix(prefix) else {
        return html
      }

      // Removes the `prefix` then trims any newlines from the markdown.
      markdown = markdown.dropFirst(prefix.count).trimmingCharacters(in: .newlines)

      guard let url = URL(string: markdown) else {
        fatalError("Invalid transistor URL \(markdown)")
      }

      // Uses the renderer to create the HTML string for a Transistor podcast.
      let generator = TransistorEmbedGenerator(url: url)
      let transistor = generator.generate()
      return renderer.render(transistor: transistor)
    }
  }
}
