// swift-tools-version: 6.0

import Foundation
import PackageDescription

let package = Package(
    name: "swift-midi-controlsurfaces",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "SwiftMIDIControlSurfaces",
            targets: ["SwiftMIDIControlSurfaces"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/orchetect/swift-midi-core", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "SwiftMIDIControlSurfaces",
            dependencies: [
                .product(name: "SwiftMIDICore", package: "swift-midi-core")
            ],
            swiftSettings: [.define("DEBUG", .when(configuration: .debug))]
        ),
        .testTarget(
            name: "SwiftMIDIControlSurfacesTests",
            dependencies: [
                "SwiftMIDIControlSurfaces"
            ]
        )
    ]
)

// MARK: - Utilities

func hasEnvironmentVariable(_ name: String) -> Bool {
    ProcessInfo.processInfo.environment[name] != nil
}

// MARK: - CI Pipeline

if hasEnvironmentVariable("GITHUB_ACTIONS") {
    for target in package.targets.filter(\.isTest) {
        if target.swiftSettings == nil { target.swiftSettings = [] }
        target.swiftSettings? += [.define("GITHUB_ACTIONS", .when(configuration: .debug))]
    }
}
