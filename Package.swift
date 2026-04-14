// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "jrnl-precision-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PrecisionNativeCore",
            targets: ["PrecisionNativeCore"]
        ),
        .library(
            name: "PrecisionNativeUI",
            targets: ["PrecisionNativeUI"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PrecisionNativeCore",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.12/PrecisionNativeCore.xcframework.zip",
            checksum: "ae918f8317e8ec2861c15cae1fa72d8667a624e9d10ee6cb413408c017bcb314"
        ),
        .binaryTarget(
            name: "PrecisionNativeUI",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-ui/0.2.12/PrecisionNativeUI.xcframework.zip",
            checksum: "a404c96401221ff173ec3e773df556f66a4e597cc05609bfc9ca0c4750ff42c0"
        )
    ]
)
