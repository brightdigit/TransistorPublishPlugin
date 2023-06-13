// swift-tools-version: 5.8
// swiftlint:disable explicit_acl explicit_top_level_acl

import PackageDescription

let package = Package(
  name: "TransistorPublishPlugin",
  platforms: [.macOS(.v12)],
  products: [
    .library(
      name: "TransistorPublishPlugin",
      targets: ["TransistorPublishPlugin"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/johnsundell/publish.git",
      from: "0.9.0"
    ),
    .package(
      url: "https://github.com/JohnSundell/Ink",
      from: "0.6.0"
    )
  ],
  targets: [
    .target(
      name: "TransistorPublishPlugin",
      dependencies: [
        .product(name: "Publish", package: "publish"),
        .product(name: "Ink", package: "Ink")
      ]
    ),
    .testTarget(
      name: "TransistorPublishPluginTests",
      dependencies: ["TransistorPublishPlugin"]
    )
  ]
)
