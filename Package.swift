// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.18.2-24-g50ecbc89fd"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.2-24-g50ecbc89fd/BNBPoseEstimation.zip",
            checksum: "3dafbee5e0db3e3805d56968edd2f89f814b434ca8e074cd06c61dcef356d79d"
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
