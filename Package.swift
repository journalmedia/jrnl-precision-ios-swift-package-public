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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.3/JournalPrecisionDMP.xcframework.zip",
            checksum: "4297b40cd981ece5adb43f5eacd3d8ad0288aabe3600817e13aa3aa1a062395c"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.3/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "b7b7706715bf94a71af456dc7239b6ed0a7b83b7f0a817cae1d7887099fe4dd8"
        )
    ]
)
