# jrnl-precision-ios-swift-package-public

Binary Swift Package for the Journal Precision iOS SDK.

This package exposes two libraries:

- `JournalPrecisionDMP`
- `JournalPrecisionNativeNetwork`

These products are distributed as prebuilt xcframework binaries and are intended to be added to consumer iOS apps through Swift Package Manager.

## Requirements

- iOS 14.0+
- Xcode with Swift Package Manager support

## Installation

Add the package in Xcode using the repository URL for this distribution repo, then select the version you want to use.

If you prefer to declare the dependency in `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/journalmedia/jrnl-precision-ios-swift-package-public.git",
        from: "0.2.8"
    )
]
```

Then add whichever product your app needs:

```swift
.target(
    name: "YourAppTarget",
    dependencies: [
        .product(name: "JournalPrecisionDMP", package: "jrnl-precision-ios-swift-package-public"),
        .product(name: "JournalPrecisionNativeNetwork", package: "jrnl-precision-ios-swift-package-public")
    ]
)
```

## Products

### `JournalPrecisionDMP`

Shared DMP functionality for:

- request building
- consent-aware request enrichment
- DMP response parsing
- snapshot caching
- targeting updates
- analytics event dispatch

Your app is still responsible for providing app-local adapters such as:

- consent / CMP integration
- identity and profile lookup
- location updates
- analytics bridge
- ad targeting bridge

### `JournalPrecisionNativeNetwork`

Shared native-network helper code for Journal native ad placements, including the carousel/table-cell helper classes used by consuming apps.

## Integration Notes

This package intentionally does not include app-specific wiring. Consuming apps must integrate their own local services and third-party SDKs around these binaries.

Typical app responsibilities include:

- configuring any DMP endpoint or app identifier values required by the host app
- providing consent state from Didomi or another CMP
- wiring location permission and location updates
- routing DMP targeting into the app's ad request builder
- initializing and bridging the app's analytics SDK

## Privacy

Depending on how your app integrates these products, the DMP flow may handle consent state, coarse or precise location inputs, vendor identifiers, and advertising identifiers.

Consuming apps are responsible for obtaining the required user consent, presenting any required privacy disclosures, and ensuring platform and legal compliance before sending this data to any configured endpoint.

## Version

The current package manifest in this repo references the live `0.2.8` S3-hosted binary artifacts.

## License

This repository is a public distribution wrapper for proprietary binary SDK artifacts. Use of the binaries is subject to the terms in [LICENSE](LICENSE) and any separate agreement with Journal Media Ltd.
