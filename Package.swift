// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NXSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NXSDK",
            targets: ["NXSDK","NXSDKTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
          url: "https://github.com/NordicSemiconductor/IOS-DFU-Library",
          .upToNextMajor(from: "4.0.0")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NXSDKTargets",
            dependencies: [
                .product(name: "NordicDFU", package: "IOS-DFU-Library")
            ]
        ),
//        .binaryTarget(
//          name: "NXSDK",
//          path: "./Sources/NXSDK.xcframework")
        .binaryTarget(name: "NXSDK", url: "https://github.com/renoldhuman/test-nextiles-ios-sdk-framework/raw/main/NXSDK.xcframework.zip", checksum: "46ae9c0996c9e79fa2eb57309801f253894f94a1f76dfc167d97b5889eb864fa")
    ]
)
