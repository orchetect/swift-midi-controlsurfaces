//
//  BankSection.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.LeftSideView {
    struct BankSection: View {
        var body: some View {
            VStack {
                HUISectionLabel("BANK")
                HStack {
                    HUIStateButton(
                        title: "◀︎",
                        param: .bankMove(.bankLeft),
                        ledColor: .red
                    )
                    HUIStateButton(
                        title: "▶︎",
                        param: .bankMove(.bankRight),
                        ledColor: .red
                    )
                }
                HUISectionLabel("CHANNEL")
                HStack {
                    HUIStateButton(
                        title: "◀︎",
                        param: .bankMove(.channelLeft),
                        ledColor: .red
                    )
                    HUIStateButton(
                        title: "▶︎",
                        param: .bankMove(.channelRight),
                        ledColor: .red
                    )
                }
            }
            .frame(height: 100)
        }
    }
}
