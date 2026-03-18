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
            checksum: "a03dedb7bee0d16cea3efe4202a7488de4aad3e3fe5dcdf0e481ff6a1e268be5"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.1/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "8577d84b8eae2751176a12f44f1353739e6ee0f6056a2a00f7f93aaa21aeda8d"
        )
    ]
)
