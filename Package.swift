// swift-tools-version:6.4
// swiftlint:disable explicit_acl explicit_top_level_acl

import PackageDescription

let package = Package(
  name: "TransistorPublishPlugin",
  // Files (via Publish) needs iOS 18 / tvOS 18 / watchOS 11 for Synchronization.Mutex.
  platforms: [
    .macOS(.v15),
    .iOS(.v18),
    .tvOS(.v18),
    .watchOS(.v11)
  ],
  products: [
    .library(
      name: "TransistorPublishPlugin",
      targets: ["TransistorPublishPlugin"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/brightdigit/Publish.git",
      branch: "brightdigit-com-260406"
    ),
    .package(
      url: "https://github.com/brightdigit/Ink.git",
      branch: "brightdigit-com-260406"
    )
  ],
  targets: [
    .target(
      name: "TransistorPublishPlugin",
      dependencies: [
        .product(name: "Publish", package: "Publish"),
        .product(name: "Ink", package: "Ink")
      ]
    ),
    .testTarget(
      name: "TransistorPublishPluginTests",
      dependencies: ["TransistorPublishPlugin"]
    )
  ]
)
