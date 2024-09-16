// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-132-g6a6b08380"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-132-g6a6b08380/BNBPoseEstimation.zip",
            checksum: "146b6defcbc10f191fb1d0ff6f0123f6fecdc1d4a7f02abad454409c3ed80c9f"
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
