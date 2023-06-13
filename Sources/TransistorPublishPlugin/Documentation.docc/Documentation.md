# ``TransistorPublishPlugin``

A Publish plugin that makes it easy to embed Transistor podcasts in your posts on any Publish website.

## Overview

This is the overview

### Requirements 

**Apple Platforms**

- Xcode 14.3 or later
- Swift 5.8 or later

// @Leo
- iOS 14 / watchOS 6 / tvOS 14 / macOS 12 or later deployment targets

**Linux**

// @Leo
- Ubuntu 18.04 or later
- Swift 5.8 or late

### Installation

To install it into your [Publish](https://github.com/johnsundell/publish) package, add it as a dependency within your `Package.swift` manifest:

```swift
let package = Package(
  ...
  dependencies: [
      ...
      .package(
        url: "https://github.com/brightdigit/TransistorPublishPlugin.git",
        from: "1.0.0"
      )
  ],
  targets: [
    .target(
      ...
      dependencies: [
          ...
          .product(name: "TransistorPublishPlugin", package: "TransistorPublishPlugin"),
      ]
    )
  ]
  ...
)
```

Then import **TransistorPublishPlugin** wherever you’d like to use it:

```swift
import TransistorPublishPlugin
```

### Usage

**TransistorPublishPlugin** enables .....

## Topics

