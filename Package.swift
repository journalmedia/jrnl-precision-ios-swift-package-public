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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.14/PrecisionNativeCore.xcframework.zip",
            checksum: "baf33a4cf6b3937420d589a8326f4f152327de96fc43d4f9ff8920d7102056a9"
        ),
        .binaryTarget(
            name: "PrecisionNativeUI",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-ui/0.2.14/PrecisionNativeUI.xcframework.zip",
            checksum: "416d06052263a186cddf5c40bcd916f2aa9a89a5ca9477fa42b8d6c718c4511f"
        )
    ]
)
