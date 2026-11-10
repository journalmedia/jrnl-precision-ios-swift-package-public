// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "precision-sdk-ios",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "PrecisionSDK",
            targets: ["PrecisionSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PrecisionSDK",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.6.0/PrecisionSDK.xcframework.zip",
            checksum: "4af50a44cccb0e7a1bf266d59344ef229dce545de293bf049db5d36ab75ecfc4"
        )
    ]
)
