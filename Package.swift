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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.0/JournalPrecisionDMP.xcframework.zip",
            checksum: "b635fda0caf490399052717b42f14cc3a7fe40ee3927fbb11820e3ec3219b315"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.0/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "c6ee69e80c0eab5736d4748d14290ccb24247e100b1a09e103495e648a2bd785"
        )
    ]
)
