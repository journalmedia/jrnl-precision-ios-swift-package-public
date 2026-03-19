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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.11/JournalPrecisionDMP.xcframework.zip",
            checksum: "8831b886f85d937dd6e4756686bc9f1baeb4504f130637cc58b32537fcdb8c17"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.11/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "bb2c1dbc2520745faa58daa2d2b2794099b92a70ddb20b801b239fb2c67e90d0"
        )
    ]
)
