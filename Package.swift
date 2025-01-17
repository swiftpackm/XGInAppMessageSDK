// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XGInAppMessageSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "XGInAppMessageSDK",
            targets: ["XGInAppMessageSDK",
                      "XGInAppMessage",
                      "XGExtension",
                      "XGMTACloud",
                      "XG_SDK_Cloud"
                     ]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "XGInAppMessageSDK",
            dependencies: [
                "XGInAppMessage",
                "XGExtension",
                "XGMTACloud",
                "XG_SDK_Cloud"
            ]
        ),
        .binaryTarget(name: "XGInAppMessage", path: "./Frameworks/XGInAppMessage.xcframework"),
        .binaryTarget(name: "XGExtension", path: "./Frameworks/XGExtension.xcframework"),
        .binaryTarget(name: "XGMTACloud", path: "./Frameworks/XGMTACloud.xcframework"),
        .binaryTarget(name: "XG_SDK_Cloud", path: "./Frameworks/XG_SDK_Cloud.xcframework")

    ]
)
