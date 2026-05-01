//
//  TransportView.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.RightSideView {
    struct TransportView: View {
        var body: some View {
            VStack {
                Spacer().frame(height: 10)
                SubTransportView()
                Spacer().frame(height: 10)
                MainTransportView()
                Spacer().frame(height: 20)
                CursorAndJogWheelView()
            }
        }
    }
}
