//
//  AutoModeSection.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.RightSideView.SwitchMatrixView {
    struct AutoModeSection: View {
        var body: some View {
            VStack {
                HUISectionLabel("AUTO MODE")

                HStack {
                    VStack {
                        HUIStateButton(
                            title: "READ",
                            param: .autoMode(.read),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "LATCH",
                            param: .autoMode(.latch),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "TRIM",
                            param: .autoMode(.trim),
                            ledColor: .yellow
                        )
                    }
                    VStack {
                        HUIStateButton(
                            title: "TOUCH",
                            param: .autoMode(.touch),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "WRITE",
                            param: .autoMode(.write),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "OFF",
                            param: .autoMode(.off),
                            ledColor: .yellow
                        )
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}
