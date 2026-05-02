//
//  HUISectionDivider.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftUI

struct HUISectionDivider: View {
    var orientation: Orientation

    init(_ orientation: Orientation) {
        self.orientation = orientation
    }

    var body: some View {
        switch orientation {
        case .vertical:
            Color.primary.frame(width: 1)

        case .horizontal:
            Color.primary.frame(height: 1)
        }
    }
}

extension HUISectionDivider {
    enum Orientation {
        case vertical
        case horizontal
    }
}
