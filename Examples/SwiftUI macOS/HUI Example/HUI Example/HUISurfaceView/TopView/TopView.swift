//
//  TopView.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView {
    struct TopView: View {
        @Environment(HUISurface.self) var huiSurface

        var body: some View {
            VStack {
                HStack {
                    Spacer()

                    VStack {
                        HStack {
                            Text(verbatim: huiSurface.isRemotePresent ? "🟢" : "🔴")
                            Text("Host")
                        }
                        .font(.system(size: 10))
                        .foregroundColor(.white)

                        Spacer()
                            .frame(height: 8)

                        Text("hui")
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .frame(width: HUISurfaceView.kLeftSideViewWidth)
                            .foregroundColor(.white)
                    }

                    MeterBridgeView()

                    LargeTextDisplayView()
                        .frame(width: HUISurfaceView.kRightSideViewWidth)

                    Spacer()
                }
                .background(Color.black)
            }
        }
    }
}
