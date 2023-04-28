// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "NetworkInterfaceInfo",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v15)
    ],
    products: [
        .library(
            name: "NetworkInterfaceInfo",
            targets: ["NetworkInterfaceInfo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/wadetregaskis/FoundationExtensions.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "NetworkInterfaceInfo",
            dependencies: [.product(name: "FoundationExtensions", package: "FoundationExtensions")]),
        .testTarget(
            name: "NetworkInterfaceInfoTests",
            dependencies: ["NetworkInterfaceInfo"]),
    ]
)
