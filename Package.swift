// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UARP",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "UARP", targets: ["UARP"]),
        .executable(name: "uarp-example", targets: ["UARPExample"]),
    ],
    targets: [
        .target(
            name: "UARP",
            path: "Sources/UARP"
        ),
        .executableTarget(
            name: "UARPExample",
            dependencies: ["UARP"],
            path: "Sources/UARPExample"
        ),
        .testTarget(
            name: "UARPTests",
            dependencies: ["UARP"],
            path: "Tests/UARPTests"
        ),
    ]
)
