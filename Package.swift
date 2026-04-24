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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.3.5/PrecisionNativeSDK.xcframework.zip",
            checksum: "0ea00ec7e5b0036b78eacae69632eb21ca1bcd2ad2a07acab2476df25ec46a86"
        )
    ]
)
