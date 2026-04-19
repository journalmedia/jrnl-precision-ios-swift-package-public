# jrnl-precision-ios-swift-package-public

Binary Swift Package distribution for the Journal Precision iOS SDK.

This repository contains the public Swift Package wrapper for prebuilt `.xcframework` binaries. The source code and full integration documentation live in the private source repository and are shared with approved integration partners as needed.

## Product

This package exposes one library product:

- `PrecisionNativeSDK`

Add this product to the iOS app targets that integrate Journal Precision.

## Requirements

- iOS 14.0+
- Xcode with Swift Package Manager support

## Installation

Add this package in Xcode using the repository URL for this distribution repo, then select the version you want to use.

For apps that declare dependencies in `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/journalmedia/jrnl-precision-ios-swift-package-public.git",
        from: "0.3.1"
    )
]
```

Then add the product to the target that needs the SDK:

```swift
.target(
    name: "YourAppTarget",
    dependencies: [
        .product(
            name: "PrecisionNativeSDK",
            package: "jrnl-precision-ios-swift-package-public"
        )
    ]
)
```

Import the SDK from app code with:

```swift
import PrecisionNativeSDK
```

## What The SDK Provides

`PrecisionNativeSDK` contains shared Journal Precision functionality for iOS apps.

At a high level, it includes:

- DMP request orchestration
- consent-aware request enrichment
- DMP response parsing
- DMP snapshot caching
- targeting updates for ad integrations
- analytics event dispatch hooks
- native ad placement configuration
- native ad lookup, cache, and prefetch support
- UIKit helpers for table, collection, slideshow, and video placement integrations
- native video presentation support, including inline and interstitial placements

## App Responsibilities

This package intentionally does not include app-specific wiring.

Consuming apps remain responsible for:

- consent management through Didomi or another CMP
- identity, profile, and login/logout integration
- location permission handling and location updates
- analytics SDK bridging
- ad-server targeting integration
- app-specific screen placement policy
- app-specific feature flags or rollout logic
- any required privacy disclosures and consent flows

The SDK provides shared infrastructure and integration points; the host app owns the app-local adapters and third-party SDK setup.

## Documentation

This public repository is intentionally a lightweight binary distribution wrapper.

Full implementation guides, API references, and sample adapter code are maintained in the private source repository. Integration partners who need detailed setup documentation should request access to that repository.

The private documentation covers:

- DMP integration
- Didomi consent integration
- native placement integration
- native lookup, cache, and prefetch behavior
- public API reference
- sample app-local adapter implementations

## Privacy

Depending on the host app integration, Journal Precision flows may handle consent state, coarse or precise location inputs, vendor identifiers, advertising identifiers, profile-derived identifiers, and ad targeting data.

Consuming apps are responsible for obtaining the required user consent, presenting any required privacy disclosures, and ensuring platform and legal compliance before sending data to configured endpoints.

## Versioning

Use tagged releases from this repository when adding the package through Swift Package Manager.

Each release references S3-hosted binary artifacts generated from the corresponding private source release.

## License

This repository is a public distribution wrapper for proprietary binary SDK artifacts. Use of the binaries is subject to the terms in [LICENSE](LICENSE) and any separate agreement with Journal Media Ltd.
