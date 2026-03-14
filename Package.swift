// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Money",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Money",
            targets: ["Money"]
        ),
        .executable(name: "GenerateLocales",
                    targets: ["Generate"],)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Money",
            path: "Sources"
        ),
        .executableTarget(
            name: "Generate",
            dependencies: ["Money"],
            path: "Supporting Files"
        ),
        .testTarget(
            name: "MoneyTests",
            dependencies: ["Money"],
            path: "Tests"
        ),
    ]
)
