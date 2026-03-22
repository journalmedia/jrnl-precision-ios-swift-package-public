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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.7/JournalPrecisionDMP.xcframework.zip",
            checksum: "53e1b42486470807bd82c112d50193bbd72a959c652f95856cce806a7d660804"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.7/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "c75d3c16c00fb06abb0e9bf38b1cd8290c32bbda7cec6e8cb052d83a2a45fc4b"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network-objc-bridge/0.2.7/JournalPrecisionNativeNetworkObjCBridge.xcframework.zip",
            checksum: "ea7921457d6cdd371e175afe4c0f19930706b8421fa6c255828222ee1c865966"
        )
    ]
)
