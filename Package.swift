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
        ),
        .library(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            targets: ["JournalPrecisionNativeNetworkObjCBridge"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "JournalPrecisionDMP",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.9/JournalPrecisionDMP.xcframework.zip",
            checksum: "ce79d61ad17b01f71038f220c50ea383a35006ebb2581025213749e8545ed6eb"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.9/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "0c51aedfdc11869a223962a690ea9de4a4d255c590b76ee71e4b323e12dc5295"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network-objc-bridge/0.2.9/JournalPrecisionNativeNetworkObjCBridge.xcframework.zip",
            checksum: "051fc3b28f8951f442173d7eaf4eea1c8cc9d35f254e8709551e14b4ea8e2bc3"
        )
    ]
)
