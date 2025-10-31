// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftUIDataFlow",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "SwiftUIDataFlow", targets: ["SwiftUIDataFlow"])
    ],
    targets: [
        .target(name: "SwiftUIDataFlow")
    ]
)
