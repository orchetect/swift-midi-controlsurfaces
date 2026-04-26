//
//  HUISwitch Tests.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

@testable import SwiftMIDIControlSurfaces
import Testing

@Suite
struct HUISwitchTests {
    /// Ensure all switches produce zone and port numbers that re-form the same switch case.
    @Test
    func allCases_InitZonePort() {
        for item in HUISwitch.allCases {
            let (zone, port) = item.zoneAndPort
            let sw = HUISwitch(zone: zone, port: port)
            #expect(item == sw)
        }
    }
}
