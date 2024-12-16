// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega32U4",
    products: [
        .library(
            name: "ATmega32U4",
            targets: ["ATmega32U4"]),
    ],
    dependencies: [.package(path: "/Users/carl/Documents/Code/HALGEN/build/ATmega32U4//../HAL")],
    targets: [
        .target(
            name: "ATmega32U4",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
