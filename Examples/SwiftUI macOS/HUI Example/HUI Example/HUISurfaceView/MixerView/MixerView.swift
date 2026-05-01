//
//  MixerView.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftUI

extension HUISurfaceView {
    struct MixerView: View {
        var body: some View {
            VStack {
                HStack(alignment: .center, spacing: 3) {
                    ForEach(0 ..< 7 + 1, id: \.self) { channel in
                        ChannelStripView(channel: channel.toUInt4)
                            .frame(width: HUISurfaceView.MixerView.channelStripWidth, alignment: .center)
                    }
                }
                Spacer()
            }
        }
    }
}
