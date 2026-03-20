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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.4/JournalPrecisionDMP.xcframework.zip",
            checksum: "f66a6e515c4bf6ada1a18df5c32f56062faf302c631e4a5c7c6a00ddab75a8d7"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.4/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "71c0683f592f9c5fd85488f0dc0cc9635cdf59f9beab345cba31bac06cddf281"
        )
    ]
)
