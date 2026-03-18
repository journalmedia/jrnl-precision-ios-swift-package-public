// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "jrnl-precision-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "JournalPrecisionDMP",
            targets: ["JournalPrecisionDMP"]
        ),
        .library(
            name: "JournalPrecisionNativeNetwork",
            targets: ["JournalPrecisionNativeNetwork"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "JournalPrecisionDMP",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.1/JournalPrecisionDMP.xcframework.zip",
            checksum: "f419b81a7f8e6d610d2d251c6c4b323efeee3ae63637568bf68e63dee3390cb0"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.1/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "6ba8d3c91fe06a384b4e5709aff5585b9cc8a6ff622939a93470eb7878c0b51a"
        )
    ]
)
