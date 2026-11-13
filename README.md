# precision-sdk-ios-spm

Binary Swift Package distribution for `PrecisionSDK`.

## Requirements

- iOS 15.0+
- Xcode with Swift Package Manager support

## Installation

```swift
dependencies: [
    .package(
        url: "https://github.com/journalmedia/precision-sdk-ios-spm.git",
        from: "0.7.0"
    )
]
```

Add `PrecisionSDK` to your target dependencies:

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

```swift
import PrecisionSDK
```

## Documentation

Integration guides and API documentation are maintained in the private source repository.

## License

Use of this package and its binary artifacts is subject to the terms in [LICENSE](LICENSE) and any separate agreement with Journal Media Ltd.
