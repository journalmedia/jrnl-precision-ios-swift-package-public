// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "jrnl-precision-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PrecisionNativeCore",
            targets: ["PrecisionNativeCore"]
        ),
        .library(
            name: "PrecisionNativeUI",
            targets: ["PrecisionNativeUI"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PrecisionNativeCore",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.15/PrecisionNativeCore.xcframework.zip",
            checksum: "e3caf4439d7b5a9c626a905fad8a692f8f2e39e963052459db521735827ff661"
        ),
        .binaryTarget(
            name: "PrecisionNativeUI",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-ui/0.2.15/PrecisionNativeUI.xcframework.zip",
            checksum: "c4417bca51f377d37fb1d64b7b251e9095e68acaeec5e506be00663716f833c5"
        )
    ]
)
