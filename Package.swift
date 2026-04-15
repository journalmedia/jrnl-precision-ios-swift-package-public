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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.16/PrecisionNativeCore.xcframework.zip",
            checksum: "3b04ccdb6edc8bf37b250a09121a47ae0425d2c694a5362393f63c3cf8f25378"
        ),
        .binaryTarget(
            name: "PrecisionNativeUI",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-ui/0.2.16/PrecisionNativeUI.xcframework.zip",
            checksum: "7117504c2369a0be69313d46fdc5c4393a421811e7e2d89b9b271b057dd90dd8"
        )
    ]
)
