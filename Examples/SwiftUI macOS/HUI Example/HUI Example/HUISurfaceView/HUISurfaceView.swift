//
//  HUISurfaceView.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

struct HUISurfaceView: View {
    @Environment(HUISurface.self) var huiSurface

    var body: some View {
        VStack {
            TopView()

            Spacer()
                .frame(height: 10)

            HStack {
                LeftSideView()

                Spacer()
                    .frame(width: 20)

                MixerView()

                Spacer()
                    .frame(width: 20)

                RightSideView()
            }
            .padding([.leading, .trailing])

            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}
