// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MagicKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "MagicKit", targets: ["Magic"]),
        .library(name: "MagicWrapper", type: .dynamic, targets: ["MagicWrapper"])
    ],
    targets: [
        .binaryTarget(name: "Magic",            path: "Magic.xcframework"),
        .binaryTarget(name: "ToastViewSwift",   path: "ToastViewSwift.xcframework"),
        .target(name: "MagicWrapper", dependencies: [.target(name: "ToastViewSwift")])
    ]
)
