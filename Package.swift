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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.8/JournalPrecisionDMP.xcframework.zip",
            checksum: "1ae7c096947e99360f961bc042fa2a8ddf3f6adc2b9033bcc7f34802ddd420d8"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.8/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "44b45a9ac604431c78f3160ad7aa4bf1c7fb0e6818eb5bd7d366e8aacf9938bd"
        )
    ]
)
