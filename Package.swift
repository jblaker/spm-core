// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// https://developer.apple.com/documentation/xcode/creating_a_standalone_swift_package_with_xcode?language=objc

import PackageDescription

let BrightcovePlayerSDK = Package(
    name: "BrightcovePlayerSDK",
    platforms: [
            .iOS(.v11), .tvOS(.v11)
        ],
    products: [
            .library(
                name: "BrightcovePlayerSDK for iOS (Dynamic)",
                targets: ["BrightcovePlayerSDK_ios_dynamic"]),
            .library(
                name: "BrightcovePlayerSDK for iOS (Static)",
                targets: ["BrightcovePlayerSDK_ios_static"]),
            .library(
                name: "BrightcovePlayerSDK for tvOS",
                targets: ["BrightcovePlayerSDK_tvos"])
        ],
    targets: [
        .binaryTarget(
                    name: "BrightcovePlayerSDK_ios_dynamic",
                    path: "xcframework/dynamic/BrightcovePlayerSDK.xcframework"
                ),
        .binaryTarget(
                    name: "BrightcovePlayerSDK_ios_static",
                    path: "xcframework/static/BrightcovePlayerSDK.xcframework"
                ),
        .binaryTarget(
                    name: "BrightcovePlayerSDK_tvos",
                    path: "xcframework/dynamic/BrightcovePlayerSDK.xcframework"
                )
    ]
)