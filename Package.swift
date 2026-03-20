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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.2/JournalPrecisionDMP.xcframework.zip",
            checksum: "b8808495c80a40f82be1e9cf21d15ae5284f2ef8fd5e7c5d25e267ae582fa866"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.2/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "1e680877f2926f74ae4c262c670458ec248aedc5f538159addeffa0fbaa84266"
        )
    ]
)
