// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-174-gec051bdc7"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-174-gec051bdc7/BNBPoseEstimation.zip",
            checksum: "1c2e6fd1d80bbdf31a8cefe674f0fc98713890cb83519ffb4fb48a1fafd77d62"
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
