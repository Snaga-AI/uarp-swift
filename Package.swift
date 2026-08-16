// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UARPSDK",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "UARPSDK", targets: ["UARPSDK"]),
        .executable(name: "uarp-example", targets: ["UARPExample"]),
    ],
    targets: [
        .target(
            name: "UARPSDK",
            path: "Sources/UARP"
        ),
        .executableTarget(
            name: "UARPExample",
            dependencies: ["UARPSDK"],
            path: "Sources/UARPExample"
        ),
        .testTarget(
            name: "UARPTests",
            dependencies: ["UARPSDK"],
            path: "Tests/UARPTests"
        ),
    ]
)
