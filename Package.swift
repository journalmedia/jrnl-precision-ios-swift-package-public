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
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-dmp/0.0.4/JournalPrecisionDMP.xcframework.zip",
            checksum: "777fd7e5a87b83a66dd885d11b895d6bd2159d7187efb2fb0b5c1f76ed2b7fd7"
        ),
        .binaryTarget(
            name: "JournalPrecisionNativeNetwork",
            url: "https://jrnl-precision.s3.eu-west-1.amazonaws.com/mobile-sdks/ios/binaries/journal-precision-native-network/0.0.4/JournalPrecisionNativeNetwork.xcframework.zip",
            checksum: "51d0e4f737b274185b28586c3d4f4545e75f8e34a9c13d77313415d624af6f44"
        )
    ]
)
