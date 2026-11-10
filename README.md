# precision-sdk-ios-spm

Binary Swift Package distribution for the Journal Media **Precision iOS SDK** (`PrecisionSDK`).

This repository contains the public Swift Package wrapper for prebuilt `.xcframework` binaries. The source code and full implementation details live in the private source repository (`precision-sdk-ios`).

## Product

This package exposes one library product:

- `PrecisionSDK`

Add this product to the iOS app targets that integrate Precision.

## Requirements

- iOS 15.0+
- Xcode with Swift Package Manager support

## Installation

Add this package in Xcode using the repository URL for this distribution repo, then select the version you want to use.

For apps that declare dependencies in `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/journalmedia/precision-sdk-ios-spm.git",
        from: "0.6.0"
    )
]
```

Then add the product to the target that needs the SDK:

```swift
.target(
    name: "YourAppTarget",
    dependencies: [
        .product(
            name: "PrecisionSDK",
            package: "precision-sdk-ios-spm"
        )
    ]
)
```

Import the SDK from app code with:

```swift
import PrecisionSDK
```

## What The SDK Provides

`PrecisionSDK` provides shared DMP orchestration, signal ingestion, and targeting/attribution payloads for iOS apps:

- **DMP Request Orchestration**: Reactive, debounced requests to the Precision DMP endpoint (`https://dmp.prcn.ie/v1/`).
- **Consent Evaluation & Revocation**: Evaluates TCF v2 purposes/special features and custom vendor consent (`ConsentStatus` / `ConsentInfo`), and automatically dispatches a one-off revocation request and clears local caches if consent is withdrawn.
- **Location Signal Handling**: Accepts GPS coordinates, zipcode/Eircode, manual city/county, or address strings (`LocationType` & `LocationAuthorization`), with significant-change filtering, precedence rules, and GPS fallback caching.
- **User Identity Normalization**: Accepts either a JWT (stripping its signature before transmission) or raw user attributes (`userId`, `name`, `email`).
- **Session Change Detection**: Automatically refreshes DMP data when the analytics session ID changes on app foregrounding.
- **Persistent Snapshot Caching**: Caches the latest DMP snapshot in `UserDefaults` for immediate availability.
- **Downstream Payload Accessors**:
  - `googleAdsData()` (`customTargetingKeywords`)
  - `googleAnalyticsData()` (`events` and `userProperties`, also dispatched automatically via `AnalyticsHandler`)
  - `purchaselyData()` (`customUserAttributes`)
  - `locationData()` (`queryParameters`)

## App Responsibilities

This package intentionally does not include app-specific third-party SDK dependencies. Consuming apps remain responsible for:

- Configuring `Precision.shared.configure(_:analyticsHandler:logger:)` on launch
- Consent management (e.g., via Didomi or another CMP) and forwarding state via `updateConsentStatus(_:)`
- Location permissions (`CLLocationManager`) and forwarding updates via `updateLocationAuthorization(_:)` and `updateLocation(_:)`
- User authentication state and forwarding updates via `updateUserStatus(_:)`
- Bridging analytics events, user properties, and session IDs via `AnalyticsHandler`
- Applying `googleAdsData()`, `purchaselyData()`, and `locationData()` when notified via `PrecisionDelegateProtocol`

## Privacy & App Store Connect

### App Store Connect ("App Privacy")

Apps integrating `PrecisionSDK` should declare the following in **App Store Connect → App Privacy**:

| Category | Data Type | Purposes | Linked to Identity | Used for Tracking (1st-Party)* | Condition |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Location** | **Coarse Location** | Third-Party Advertising, Developer’s Advertising or Marketing, Analytics | Yes | No | If the app passes location to the SDK (resolved into coarse geographic cohorts). |
| **Identifiers** | **User ID** | Third-Party Advertising, Developer’s Advertising or Marketing, Analytics | Yes | No | If the app passes logged-in user info (`userId` / `jwt`). |
| **Identifiers** | **Device ID** | Third-Party Advertising, Developer’s Advertising or Marketing, Analytics | Yes | No* | Always (`vendor_id` / IDFV, `advertising_id` / IDFA, `appInstanceId`). |
| **Usage Data** | **Advertising Data** | Third-Party Advertising, Developer’s Advertising or Marketing, Analytics | Yes | No* | Always (cached DMP targeting segments, analytics properties, and marketing attributes). |

*\*If the host app displays the iOS ATT prompt (`ATTrackingManager`), Apple requires at least one data type (e.g., **Usage Data → Advertising Data** or **Identifiers → Device ID**) to be marked **Used for Tracking = Yes**. When ATT is not authorized, the DMP backend restricts lookups to first-party/company-scoped identifiers.*

### Privacy Manifest (`PrivacyInfo.xcprivacy`) & Permissions

- **`NSPrivacyAccessedAPICategoryUserDefaults` (`CA92.1`)**: Ensure this is declared in the host app's `PrivacyInfo.xcprivacy` (the SDK persists DMP snapshots and cached location state in `UserDefaults.standard`).
- **`NSPrivacyTracking`**: `false` for first-party usage.
- **Location**: No `PrivacyInfo.xcprivacy` entry is needed (gated at runtime by `NSLocationWhenInUseUsageDescription` in `Info.plist`).

## Versioning

Use tagged releases from this repository when adding the package through Swift Package Manager. Each release references S3-hosted binary artifacts generated from the corresponding `precision-sdk-ios` release.

## License

This repository is a public distribution wrapper for proprietary binary SDK artifacts. Use of the binaries is subject to the terms in [LICENSE](LICENSE) and any separate agreement with Journal Media Ltd.
