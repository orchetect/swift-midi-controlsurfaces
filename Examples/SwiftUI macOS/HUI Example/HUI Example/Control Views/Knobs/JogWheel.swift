//
//  JogWheel.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Controls
import SwiftMIDIControlSurfaces
import SwiftUI

struct JogWheel: View {
    @Environment(HUISurface.self) var huiSurface

    var size: CGFloat

    @State private var lastDragLocation: CGPoint?

    var body: some View {
        ZStack {
            KnobShape(size: size)
            Text("Jog Wheel")
                .foregroundColor(.black)
        }
        .highPriorityGesture(
            DragGesture(minimumDistance: 2)
                .onChanged { v in
                    let getLastDragLocation = lastDragLocation ?? v.location
                    let isPositive = v.location.x > getLastDragLocation.x
                    let delta: Int7 = isPositive ? 1 : -1
                    huiSurface.transmitJogWheel(delta: delta)
                    lastDragLocation = v.location
                }
        )
    }
}
