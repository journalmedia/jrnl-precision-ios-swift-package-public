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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.8/JournalPrecisionDMP.xcframework.zip",
            checksum: "ee5c55a0dacce847a17f4c8962588df20716f0030ff7a722ea92805135534186"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.8/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "70ccacf6333aa7462b8bd72cb845264a0fdaeab8b414224a9a8505e405ecf334"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network-objc-bridge/0.2.8/JournalPrecisionNativeNetworkObjCBridge.xcframework.zip",
            checksum: "548800c144573e414230a6e7eb2624668e9bbc45756abcecd3bce1afc1ff8150"
        )
    ]
)
