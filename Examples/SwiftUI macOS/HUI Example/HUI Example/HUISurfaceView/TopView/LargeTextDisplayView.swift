//
//  LargeTextDisplayView.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.TopView {
    struct LargeTextDisplayView: View {
        @Environment(HUISurface.self) var huiSurface

        var body: some View {
            VStack(alignment: .leading, spacing: 5) {
                Text(huiSurface.model.largeDisplay.top.stringValue)
                Text(huiSurface.model.largeDisplay.bottom.stringValue)
            }
            .font(.system(size: 14, weight: .regular, design: .monospaced))
            .foregroundColor(.white)
            .background(.black)
            .frame(width: 360, height: 42)
            .cornerRadius(3.0, antialiased: true)
        }
    }
}
