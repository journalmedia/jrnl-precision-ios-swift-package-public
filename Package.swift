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
        ),
        .library(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            targets: ["JournalPrecisionNativeNetworkObjCBridge"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "JournalPrecisionDMP",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.6/JournalPrecisionDMP.xcframework.zip",
            checksum: "ed2bbff2c55f95c2660006efa8853835713db5fc6de6919371f209eed3e43e3a"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.6/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "e85606af583a2d094d07eb364c2679178c0e10c5414c475675a9c356fad0b578"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network-objc-bridge/0.2.6/JournalPrecisionNativeNetworkObjCBridge.xcframework.zip",
            checksum: "e365cae58eb8f1d53ef4658fbfd92799a41be4a3e99ceb08e555bfbb13b4603c"
        )
    ]
)
