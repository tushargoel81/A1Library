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
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.29.0"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", from: "17.0.2"),
    ],
    targets: [
        .target(
            name: "A1Library",
            dependencies: [
                "Alamofire",
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk"),
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                .product(name: "FacebookLogin", package: "facebook-ios-sdk"),

]),
        .testTarget(
            name: "A1LibraryTests",
            dependencies: ["A1Library"]),
    ]
)
//spec.dependency 'Alamofire', '5.9.0'
//spec.dependency 'FirebaseAnalytics', '10.25.0'
//spec.dependency 'Firebase', '10.25.0'
//spec.dependency 'FBSDKCoreKit'
//spec.dependency 'YandexMobileMetrica', '4.5.2'
//spec.dependency 'Beacon', '3.0.0'
//spec.dependency 'Google-Mobile-Ads-SDK', '11.1.0'
//spec.dependency 'FirebaseRemoteConfig', '10.25.0'
//spec.dependency 'SwiftyJSON', '5.0.1'
//spec.dependency 'ShimmerSwift', '2.1.1'
//spec.dependency 'Clarity'
