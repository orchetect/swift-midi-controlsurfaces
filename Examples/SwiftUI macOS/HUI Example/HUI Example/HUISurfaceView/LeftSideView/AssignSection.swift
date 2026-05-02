//
//  AssignSection.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

extension HUISurfaceView.LeftSideView {
    struct AssignSection: View {
        var body: some View {
            VStack {
                HStack {
                    Text("ASSIGN")
                        .font(.system(size: 10))
                        .spaceHogFrame()
                    HUIStateButton(
                        title: "SUSPEND",
                        param: .assign(.suspend),
                        ledColor: .red
                    )
                }
                HStack {
                    HUIStateButton(
                        title: "INPUT",
                        param: .assign(.input),
                        ledColor: .red
                    )
                    HUIStateButton(
                        title: "DEFAULT",
                        param: .assign(.defaultBtn),
                        ledColor: .red
                    )
                }
                HStack {
                    HUIStateButton(
                        title: "OUTPUT",
                        param: .assign(.output),
                        ledColor: .red
                    )
                    HUIStateButton(
                        title: "ASSIGN",
                        param: .assign(.assign),
                        ledColor: .red
                    )
                }
            }
            .frame(height: 100)
        }
    }
}
