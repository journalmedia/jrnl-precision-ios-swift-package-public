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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.1.1/JournalPrecisionDMP.xcframework.zip",
            checksum: "d36674912da00643ae39c822d305df6a1d28190fb3a155640bcd77f3cc24f24a"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.1.1/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "09b2fedb491710764ac3627c301f9f8a61970ad37f398f6be2bc7a25bc3c7c4d"
        )
    ]
)
