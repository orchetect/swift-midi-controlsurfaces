//
//  MainTimeDisplayView.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.RightSideView {
    struct MainTimeDisplayView: View {
        @Environment(HUISurface.self) var huiSurface

        var body: some View {
            HStack {
                VStack(alignment: .trailing, spacing: 4) {
                    Text("TIME CODE") + Text(verbatim: " ") + Text(verbatim: huiSurface.model.timeDisplay.timecode ? "🔴" : "⚪️")
                    Text("FEET") + Text(verbatim: " ") + Text(verbatim: huiSurface.model.timeDisplay.feet ? "🔴" : "⚪️")
                    Text("BEATS") + Text(verbatim: " ") + Text(verbatim: huiSurface.model.timeDisplay.beats ? "🔴" : "⚪️")
                }
                .font(.system(size: 9, weight: .regular))

                Text(huiSurface.model.timeDisplay.timeString.stringValue)
                    .font(.system(size: 20, weight: .regular, design: .monospaced))
                    .foregroundColor(Color.red)
                    .frame(width: 150, height: 30)
                    .background(Color.black)
                    .cornerRadius(3.0, antialiased: true)

                Spacer().frame(width: 20)

                HStack {
                    VStack(alignment: .trailing, spacing: 1) {
                        Text("RUDE")
                        Text("SOLO")
                        Text("LIGHT")
                    }
                    .font(.system(size: 9, weight: .regular))

                    Text(verbatim: huiSurface.model.timeDisplay.rudeSolo ? "🔴" : "⚪️")
                        .font(.system(size: 14))
                }
            }
        }
    }
}
