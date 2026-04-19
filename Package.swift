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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.3.0/PrecisionNativeSDK.xcframework.zip",
            checksum: "47ea4b6f8157e0fea56d9c30a8609209350a11a9ec5f7170db72d93aba9450e5"
        )
    ]
)
