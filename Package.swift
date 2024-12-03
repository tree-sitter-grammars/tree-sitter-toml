// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterTOML",
    products: [
        .library(name: "TreeSitterTOML", targets: ["TreeSitterTOML"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterTOML",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterTOMLTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterTOML",
            ],
            path: "bindings/swift/TreeSitterTOMLTests"
        )
    ],
    cLanguageStandard: .c11
)
