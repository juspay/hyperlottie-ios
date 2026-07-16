// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperLottie",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HyperLottie",
            targets: ["HyperLottie"]
        )
    ],
    dependencies: [
        .package(name: "lottie-spm", url: "https://github.com/airbnb/lottie-spm.git", "4.0.0"..<"5.0.0"),
    ],
    targets: [
        .target(
            name: "HyperLottie",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm"),
            ],
            path: "Sources/HyperLottie",
        )
    ]
)