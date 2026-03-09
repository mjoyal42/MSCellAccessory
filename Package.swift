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
            sources: [
                "MSCellAccessory.m",
                "UIView+AccessViewController.m"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("SWIFT_PACKAGE"),
                .unsafeFlags([
                    "-fmodules",
                     "-fcxx-modules",
                     "-F", "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks"
                     ])
            ]
        )
    ]
)
