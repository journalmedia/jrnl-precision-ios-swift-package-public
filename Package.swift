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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.13/JournalPrecisionDMP.xcframework.zip",
            checksum: "cf712b92afdf28b77c03c1d9a4e339a59779408b10781c99d4db10189cadc9b3"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.13/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "1a060f52ad9088e08568f21507339a4ad753100a9f2b39dc03fafb16108cd4e1"
        )
    ]
)
