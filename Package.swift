// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "jrnl-precision-ios",
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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.5.0/PrecisionSDK.xcframework.zip",
            checksum: "ed129141b64e78947b8c1712dc673d1dfe3aec124dce91182cf0bc4b9ab9ce1a"
        )
    ]
)
