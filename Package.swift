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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.2.18/PrecisionNativeSDK.xcframework.zip",
            checksum: "3b7b3d3ce7edf2cd1bce84c0e4499ee928574a9e1e5e4380a3edeae725b1bb08"
        )
    ]
)
