//
//  RightSideView.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftUI

extension HUISurfaceView {
    struct RightSideView: View {
        var body: some View {
            VStack {
                ParameterEditAssignView()
                HUISectionDivider(.horizontal)
                FKeysView()
                HUISectionDivider(.horizontal)
                SwitchMatrixView()
                HUISectionDivider(.horizontal)

                Spacer().frame(height: 10)

                HStack(alignment: .top) {
                    VStack {
                        Spacer().frame(height: 20)
                        MainTimeDisplayView()
                        HUISectionDivider(.horizontal)
                        ControlRoomView()
                        HUISectionDivider(.horizontal)
                    }
                    Spacer().frame(width: 25)
                    NumPadView()
                }

                TransportView()

                Spacer()
            }
            .frame(width: HUISurfaceView.kRightSideViewWidth, alignment: .top)
        }
    }
}

// MARK: - Static

extension HUISurfaceView {
    static let kRightSideViewWidth: CGFloat = 500
}
