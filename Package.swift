// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega32U4",
    products: [
        .library(
            name: "ATmega32U4",
            targets: ["ATmega32U4"]),
    ],
    dependencies: [
    .package(url: "https://github.com/microswift-packages/hal-baseline", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "ATmega32U4",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
