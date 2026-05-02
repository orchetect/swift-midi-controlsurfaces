//
//  SwiftUI Extensions.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftUI

extension View {
    func spaceHogFrame(alignment: Alignment = .center) -> some View {
        ZStack(alignment: alignment) {
            Color.clear
            self
        }
    }
}
