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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.11/JournalPrecisionDMP.xcframework.zip",
            checksum: "390621502f123dafa6a94f01970fbda754b208e7e86446eac421c8cac03e4224"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.11/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "e7226e04e7dbad1746cd146d0782302d8934ca681773d233006e89aa9d8253f4"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network-objc-bridge/0.2.11/JournalPrecisionNativeNetworkObjCBridge.xcframework.zip",
            checksum: "c51afd0e5c48acd534520f3860a2e67176ad3350993158d97fa9b18244f5ec53"
        )
    ]
)
