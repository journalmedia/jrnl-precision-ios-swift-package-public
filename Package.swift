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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.9/JournalPrecisionDMP.xcframework.zip",
            checksum: "821d1dedf8c50b9f9b60e06d04436058c7975cdf9d5b2747d9370c7c57792504"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.9/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "bacfded620e106ff44e31b45637d65b9fd7a466f7ece2096b03b78843d5567bc"
        )
    ]
)
