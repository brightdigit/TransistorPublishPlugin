// swift-tools-version: 5.8
// swiftlint:disable explicit_acl explicit_top_level_acl

import PackageDescription

let package = Package(
  name: "TransistorPublishPlugin",
  products: [
    .library(
      name: "TransistorPublishPlugin",
      targets: ["TransistorPublishPlugin"]
    )
  ],
  targets: [
    .target(
      name: "TransistorPublishPlugin"
    ),
    .testTarget(
      name: "TransistorPublishPluginTests",
      dependencies: ["TransistorPublishPlugin"]
    )
  ]
)
