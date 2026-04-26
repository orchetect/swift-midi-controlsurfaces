//
//  HUISurfaceModel Tests.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

@testable import SwiftMIDIControlSurfaces
import Testing

@Suite
struct HUISurfaceModelTests {
    @available(macOS 14.0, iOS 17.0, watchOS 10.0, tvOS 17.0, *)
    @Test
    func channelStripsValidation() {
        let model = HUISurfaceModel()
        #expect(model.channelStrips.count == 8)
    }
}
