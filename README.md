![swift-midi-controlsurfaces](Images/swift-midi-controlsurfaces-banner.png)

# SwiftMIDI Control Surfaces

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Forchetect%2Fswift-midi-controlsurfaces%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/orchetect/swift-midi-controlsurfaces) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Forchetect%2Fswift-midi-controlsurfaces%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/orchetect/swift-midi-controlsurfaces) [![License: MIT](http://img.shields.io/badge/License-MIT-lightgrey.svg?style=flat)](https://github.com/orchetect/swift-midi-controlsurfaces/blob/main/LICENSE)

Extension for [SwiftMIDI](https://github.com/orchetect/swift-midi) adding support for control surface protocol abstractions, such as HUI.

## Compatibility

| macOS | iOS  | visionOS | Linux | Android | Windows |
| :---: | :--: | :------: | :---: | :-----: | :-----: |
|   🟢   |  🟢   |    🟢     |  🚧 †  |   🚧 †   |    -    |

`†` Support for indicated platforms is either planned or WIP.

## Getting Started

This extension is available as a Swift Package Manager (SPM) package.

To use this extension as standalone dependency (instead of importing the **swift-midi** umbrella repository):

1. Add the **swift-midi-controlsurfaces** repo as a dependency.

   ```swift
   .package(url: "https://github.com/orchetect/swift-midi-controlsurfaces", from: "1.0.0")
   ```

2. Add **SwiftMIDIControlSurfaces** to your target.

   ```swift
   .product(name: "SwiftMIDIControlSurfaces", package: "swift-midi-controlsurfaces")
   ```

3. Import **SwiftMIDIControlSurfaces** to use it.

   ```swift
   import SwiftMIDIControlSurfaces
   ```

## Documentation & Support

See the [online documentation](https://swiftpackageindex.com/orchetect/swift-midi-controlsurfaces/main/documentation) for this repository and its [Examples](Examples) folder.

For support, feature requests, and bug reports see the main [SwiftMIDI](https://github.com/orchetect/swift-midi) repository.

## Author

Coded by a bunch of 🐹 hamsters in a trenchcoat that calls itself [@orchetect](https://github.com/orchetect).

## License

Licensed under the MIT license. See [LICENSE](https://github.com/orchetect/swift-midi-controlsurfaces/blob/master/LICENSE) for details.