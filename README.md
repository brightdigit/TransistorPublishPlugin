# TransistorPublishPlugin

A [Publish](https://github.com/JohnSundell/Publish) plugin that makes it easy to embed [Transistor](https://transistor.fm/?via=publish-plugin) podcasts in your posts on any Publish website.

[![SwiftPM](https://img.shields.io/badge/SPM-Linux%20%7C%20macOS-success?logo=swift)](https://swift.org)
[![Twitter](https://img.shields.io/badge/twitter-@brightdigit-blue.svg?style=flat)](http://twitter.com/brightdigit)
![GitHub](https://img.shields.io/github/license/brightdigit/TransistorPublishPlugin)
![GitHub issues](https://img.shields.io/github/issues/brightdigit/TransistorPublishPlugin)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/brightdigit/TransistorPublishPlugin/TransistorPublishPlugin.yml?label=actions&logo=github&?branch=main)

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbrightdigit%2FTransistorPublishPlugin%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/brightdigit/TransistorPublishPlugin)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbrightdigit%2FTransistorPublishPlugin%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/brightdigit/TransistorPublishPlugin)


[![Codecov](https://img.shields.io/codecov/c/github/brightdigit/TransistorPublishPlugin)](https://codecov.io/gh/brightdigit/TransistorPublishPlugin)
[![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/brightdigit/TransistorPublishPlugin)](https://www.codefactor.io/repository/github/brightdigit/TransistorPublishPlugin)
[![codebeat badge](https://codebeat.co/badges/508ff110-90aa-4a3d-be48-1ffcc8009dd1)](https://codebeat.co/projects/github-com-brightdigit-npmpublishplugin-main)
[![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/brightdigit/TransistorPublishPlugin)](https://codeclimate.com/github/brightdigit/TransistorPublishPlugin)
[![Code Climate technical debt](https://img.shields.io/codeclimate/tech-debt/brightdigit/TransistorPublishPlugin?label=debt)](https://codeclimate.com/github/brightdigit/TransistorPublishPlugin)
[![Code Climate issues](https://img.shields.io/codeclimate/issues/brightdigit/TransistorPublishPlugin)](https://codeclimate.com/github/brightdigit/TransistorPublishPlugin)
[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

# Table of Contents

* [Introduction](#introduction)
   * [Requirements](#requirements)
   * [Installation](#installation)
* [Usage](#usage)
* [References](#references)
* [License](#license)

# Introduction

Using blockquotes in your markdown, you can easily embed the [Transisitor](https://transistor.fm/?via=publish-plugin) podcast player in your website.

## Requirements 

**Apple Platforms**

- Xcode 14.3 or later
- Swift 5.8 or later

- macOS 12 or later deployment targets

**Linux**

- Ubuntu 18.04 or later
- Swift 5.8 or late

## Installation

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

# Usage

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
![Copy the URL from the Episode List](Sources/TransistorPublishPlugin/Documentation.docc/Resources/videos/CopyFromEpisodeList.gif)

**Copy the URL from the Episode Page**
![Copy the URL from the Episode Page](Sources/TransistorPublishPlugin/Documentation.docc/Resources/videos/CopyFromEpisodePage.gif)

**Copy the URL from the Social Page**
![Copy the URL from the Social Page](Sources/TransistorPublishPlugin/Documentation.docc/Resources/videos/CopyFromEpisodeShare.gif)

In your article add a block quote with the url to a podcast episode:

```markdown
A thing to know about iOS apps is, that in a lot of cases, people don’t need the cloud to store their data. It can just be stored on their phone.

> transistor https://share.transistor.fm/s/67771090

When you're building an app, you should consider whether you really need something stored in the cloud. **In the end, you could save a lot of time and money, if everything can be saved as a file, keep the data on the phone, and maybe only back that data up into cloud storage.**
```

Now you should see the embed on your rendered page:

![Screenshot of Transistor Embed](Sources/TransistorPublishPlugin/Documentation.docc/Resources/web-screenshot.jpg)
 
# References

* [Publish by John Sundell](https://github.com/JohnSundell/Publish)
* [transistor.fm](https://transistor.fm/?via=publish-plugin) 

# License 

This code is distributed under the MIT license. See the [LICENSE](https://github.com/brightdigit/TransistorPublishPlugin/LICENSE) file for more info.
