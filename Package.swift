// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PrecisionSDK",
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
            url: "https://precision-cdn.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/precision-sdk-ios/0.7.0/PrecisionSDK.xcframework.zip",
            checksum: "e1e5495bc34bd039e1e3f4e30c2963eb468ff6e256834bb06d723b02180a2330"
        )
    ]
)
