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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.2.13/PrecisionNativeCore.xcframework.zip",
            checksum: "8d64343fdd2ee2eaa724ffbe3708d02f7298badffd7e4139149f7b3298c9afbe"
        ),
        .binaryTarget(
            name: "PrecisionNativeUI",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-ui/0.2.13/PrecisionNativeUI.xcframework.zip",
            checksum: "e1defc09abb65a2cb38d6f215cabad3d465971eb189ef472f6ce1ca0a50418ee"
        )
    ]
)
