// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "A1Library",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "A1Library",
            targets: ["A1Library"]),
    ],
    targets: [
        .target(
            name: "A1Library",
            dependencies: []),
        .testTarget(
            name: "A1LibraryTests",
            dependencies: ["A1Library"]),
    ]
)
