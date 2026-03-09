// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MSCellAccessory",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "MSCellAccessory",
            targets: ["MSCellAccessory"]
        )
    ],
    targets: [
        .target(
            name: "MSCellAccessory",
            path: "MSCellAccessory",
            publicHeadersPath: ".",
            sources: [
                "MSCellAccessory.m",
                "UIView+AccessViewController.m"
            ],
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
