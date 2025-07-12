// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PopupView",
    platforms: [
        .iOS(.v15),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(name: "PopupView", targets: ["PopupView"]),
    ],
    dependencies: [
//        .package(
//            url: "https://github.com/siteline/swiftui-introspect",
//            from: "1.0.0"


        .package(url: "https://github.com/siteline/swiftui-introspect", .exact("1.4.0-beta.3")),
    ],
    targets: [
        .target(
            name: "PopupView",
            dependencies: [
                .product(name: "SwiftUIIntrospect", package: "swiftui-introspect"),
            ],
            swiftSettings: [
              .enableExperimentalFeature("StrictConcurrency")
            ]
        )
    ]
)
