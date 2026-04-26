//
//  HUISwitchProtocol.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

public protocol HUISwitchProtocol: Sendable {
    /// HUI zone and port constant for the switch.
    var zoneAndPort: HUIZoneAndPort { get }
}
