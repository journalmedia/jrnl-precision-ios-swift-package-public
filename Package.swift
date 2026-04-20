// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "jrnl-precision-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PrecisionNativeSDK",
            targets: ["PrecisionNativeSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PrecisionNativeSDK",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.3.4/PrecisionNativeSDK.xcframework.zip",
            checksum: "8b12e9b2da212ae9235320fc7655b4122a3685a391c39e4b36017d16f3e2d9a6"
        )
    ]
)
