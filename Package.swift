// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CaptchaKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CaptchaKit",
            targets: ["Captcha"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Captcha",
            dependencies: []
        ),
        .testTarget(
            name: "CaptchaTests",
            dependencies: ["Captcha"]
        )
    ]
)

