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
    .package(path: "../../Publish/Publish"),
    .package(path: "../../Publish/Ink")
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
