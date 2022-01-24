// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "POC_Common_UI_iOS",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "POC_Common_UI_iOS",
            targets: ["POC_Common_UI_iOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Kingfisher", url: "https://github.com/onevcat/Kingfisher.git", from: "7.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "POC_Common_UI_iOS",
            dependencies: [
                "Kingfisher"
            ]),
        .testTarget(
            name: "POC_Common_UI_iOSTests",
            dependencies: ["POC_Common_UI_iOS"]),
    ]
)
