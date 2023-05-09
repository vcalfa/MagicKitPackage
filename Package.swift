// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MagicKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "MagicKit", targets: ["Magic"])
    ],
    targets: [
        .binaryTarget(name: "Magic", path: "Frameworks/Magic.xcframework")
    ]
)
