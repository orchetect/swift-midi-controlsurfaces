//
//  LeftSideView.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView {
    struct LeftSideView: View {
        var body: some View {
            VStack {
                SendSection()
                AssignSection()
                BankSection()
                WindowSection()
                KeyboardShortcutsSection()
                Spacer()
            }
            .frame(width: HUISurfaceView.kLeftSideViewWidth, alignment: .top)
        }
    }
}

// MARK: - Static

extension HUISurfaceView {
    static let kLeftSideViewWidth: CGFloat = 120
}
