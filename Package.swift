// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "jrnl-precision-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PrecisionNativeSDK",
            targets: ["PrecisionNativeSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PrecisionNativeSDK",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native/0.2.21/PrecisionNativeSDK.xcframework.zip",
            checksum: "c05373834a779707d599a76db61690fe688a04111100c7c37fa598741220793b"
        )
    ]
)
