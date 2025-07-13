// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ToastifySwift",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "ToastifySwift",
            targets: ["ToastifySwift"]
        )
    ],
    targets: [
        .target(
            name: "ToastifySwift",
            dependencies: []
        )
    ]
)
