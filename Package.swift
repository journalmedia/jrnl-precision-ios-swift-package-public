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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.10/JournalPrecisionDMP.xcframework.zip",
            checksum: "844e407ff51d2afe61c5509dfb9ce093ee94be0d0d83bbd7dfbcefdb2ab1de6c"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.2.10/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "31b9a7e4c8b9f9b6fb3d632fc340393b0479cea43ff47fd71e4cad46751e48dd"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetworkObjCBridge",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network-objc-bridge/0.2.10/JournalPrecisionNativeNetworkObjCBridge.xcframework.zip",
            checksum: "ef827fa177ae4020ab2d7a14c338d944037e89e11e463fc572822743064dbc43"
        )
    ]
)
