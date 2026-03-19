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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.6/JournalPrecisionDMP.xcframework.zip",
            checksum: "8e898466e2a15fc277b29e2a2a20bb3eaa318d4de614bbf552b9225a1c77757b"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.6/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "6a2fc5d5c17d2ef94b8677b57fc2a9efbaf4062e158f7c89b0ab09e27fe8370e"
        )
    ]
)
