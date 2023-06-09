# ``TransistorPublishPlugin``

A Publish plugin that makes it easy to embed transistor.fm podcasts in your posts on any Publish website.

## Overview

![Transistor Logo](transistor)

Using blockquotes in your markdown, you can easily embed the [Transistor](https://transistor.fm/?via=publish-plugin) podcast player in your [Publish](https://github.com/johnsundell/publish) website.

### Requirements 

**Apple Platforms**

- Xcode 14.3 or later
- Swift 5.8 or later

- macOS 12 or later deployment targets

**Linux**

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
        url: "https://github.com/johnsundell/publish.git", 
        from: "0.9.0"
      ),
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
          .product(name: "Publish", package: "publish"),
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

There are two pieces to using the plugin:

First, add the plugin to your build steps:

```
try DeliciousRecipes().publish(using: [
    .installPlugin(.transistor()),
    .addMarkdownFiles(),
    .copyResources(),
    .addFavoriteItems(),
    .addDefaultSectionTitles(),
    .generateHTML(withTheme: .delicious),
    .generateRSSFeed(including: [.recipes]),
    .generateSiteMap(),
])
```

Lastly, get the share url from your podcast episode. On [Transistor](https://transistor.fm/?via=publish-plugin), this is known as either the podcast episode's simple share url or social media landing page:

**Copy the URL from the Episode List**
![Copy the URL from the Episode List](CopyFromEpisodeList.gif)

**Copy the URL from the Episode Page**
![Copy the URL from the Episode Page](CopyFromEpisodePage.gif)

**Copy the URL from the Social Page**
![Copy the URL from the Social Page](CopyFromEpisodeShare.gif)

In your article add a block quote with the url to a podcast episode:

```markdown
A thing to know about iOS apps is, that in a lot of cases, people don’t need the cloud to store their data. It can just be stored on their phone.

> transistor https://share.transistor.fm/s/67771090

When you're building an app, you should consider whether you really need something stored in the cloud. **In the end, you could save a lot of time and money, if everything can be saved as a file, keep the data on the phone, and maybe only back that data up into cloud storage.**
```

Now you should see the embed on your rendered page:

![Screenshot of Transistor Embed](web-screenshot.jpg)

## Topics

* ``Publish/Plugin/transistor(renderer:)``
