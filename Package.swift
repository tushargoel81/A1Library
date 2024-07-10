// swift-tools-version: 5.4
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
    dependencies: [
            .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.29.0"),
    ],
    targets: [
        .target(
            name: "A1Library",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
]),
        .testTarget(
            name: "A1LibraryTests",
            dependencies: ["A1Library"]),
    ]
)
