//
//  StatusGroupSection.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.RightSideView.SwitchMatrixView {
    struct StatusGroupSection: View {
        var body: some View {
            VStack {
                HUISectionLabel("STATUS/GROUP")

                HStack {
                    VStack {
                        HUIStateButton(
                            title: "AUTO",
                            param: .statusAndGroup(.auto),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "MONITOR",
                            param: .statusAndGroup(.monitor),
                            ledColor: .yellow,
                            fontSize: 9
                        )
                        HUIStateButton(
                            title: "PHASE",
                            param: .statusAndGroup(.phase),
                            ledColor: .yellow
                        )
                    }

                    VStack {
                        HUIStateButton(
                            title: "GROUP",
                            param: .statusAndGroup(.group),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "CREATE",
                            param: .statusAndGroup(.create),
                            ledColor: .yellow
                        )
                        HUIStateButton(
                            title: "SUSPEND",
                            param: .statusAndGroup(.suspend),
                            ledColor: .yellow,
                            fontSize: 9
                        )
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}
