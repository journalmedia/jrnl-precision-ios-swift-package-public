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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.1.0/JournalPrecisionDMP.xcframework.zip",
            checksum: "5c221c9ca51d4a12ee55f077338db0b27c9cfbd0e4cef0091adef81c91889403"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.1.0/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "ce222e9a7a8c743a4cb275847735f9581e89e6bad7dbfa5a5ba1378c26054a49"
        )
    ]
)
