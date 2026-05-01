//
//  HUIClientView.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftMIDIIO
import SwiftUI

struct HUIClientView: View {
    @Environment(MIDIHelper.self) private var midiHelper

    @State private var huiClientHelper: HUIClientHelper = .init()

    init() { }

    var body: some View {
        HUISurfaceView()
            .frame(maxWidth: .infinity)
            .environment(huiClientHelper.huiSurface)
            .task {
                await huiClientHelper.setup(midiManager: midiHelper.midiManager)
                await huiClientHelper.startVirtualPorts()
            }
            .onDisappear { huiClientHelper.stopVirtualPorts() }
    }
}
