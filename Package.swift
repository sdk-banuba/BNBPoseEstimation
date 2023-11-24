// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.9.1-86-g65c1c833d4"

let package = Package(
    name: "BNBPoseEstimation",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBPoseEstimation",
            targets: [
                "BNBPoseEstimation",
                "BNBPoseEstimation_BNBSdkCore",
                "BNBPoseEstimation_BNBEffectPlayer",
                "BNBPoseEstimation_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBPoseEstimation",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.9.1-86-g65c1c833d4/BNBPoseEstimation.zip",
            checksum: "c9e411af70f3ff77184f00564baf365f738cb991eebbfc8b783f0d9de334a233"
        ),
        .target(
            name: "BNBPoseEstimation_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBPoseEstimation_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBPoseEstimation_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
