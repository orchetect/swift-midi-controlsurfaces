//
//  SwitchMatrixView.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.RightSideView {
    struct SwitchMatrixView: View {
        var body: some View {
            HStack {
                AutoEnableSection()
                HUISectionDivider(.vertical)
                AutoModeSection()
                HUISectionDivider(.vertical)
                StatusGroupSection()
                HUISectionDivider(.vertical)
                EditSection()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
        }
    }
}
