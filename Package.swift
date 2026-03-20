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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.1/JournalPrecisionDMP.xcframework.zip",
            checksum: "61c751fd76ba00806a565cd2f91d1706d3a4244d80bff1f4265014f82e99a517"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.1/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "31dae196de80167c64840e0677dcc448b5bf42b634626d9116a7fe0e1733972d"
        )
    ]
)
