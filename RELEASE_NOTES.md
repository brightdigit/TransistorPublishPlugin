# Release Notes

## 2.0.0-alpha.1

TransistorPublishPlugin moves to the Swift 6.4 toolchain and now consumes Publish and Ink from
their standalone repositories rather than a monorepo path. The dependency and toolchain shift is
breaking for consumers of `1.0.0`, hence the major bump.

### Library
* Modernize lint/format tooling (mise + swift-format) and refresh CI/dependencies by @leogdion in https://github.com/brightdigit/TransistorPublishPlugin/pull/6
* Build on `swift-tools-version:6.4` with complete strict concurrency by @leogdion in https://github.com/brightdigit/TransistorPublishPlugin/pull/6

### Dependencies
* Consume Publish and Ink from their standalone repositories rather than monorepo paths by @leogdion in https://github.com/brightdigit/TransistorPublishPlugin/pull/6
* Raise the Apple platform floors required by Publish's `Synchronization.Mutex` usage by @leogdion in https://github.com/brightdigit/TransistorPublishPlugin/pull/6

### Tooling & CI
* Move linting to mise with `.mise.toml`, `.swift-format`, `.swiftlint.yml` and `Scripts/lint.sh` by @leogdion in https://github.com/brightdigit/TransistorPublishPlugin/pull/6
* Adopt the shared multi-platform CI template (macOS/Linux/Windows/Android) by @leogdion in https://github.com/brightdigit/TransistorPublishPlugin/pull/6

**Full Changelog**: https://github.com/brightdigit/TransistorPublishPlugin/compare/1.0.0...2.0.0-alpha.1
