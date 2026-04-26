//
//  HUI Types.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDICore

/// Raw HUI zone byte.
public typealias HUIZone = UInt8

/// Raw HUI port nibble.
public typealias HUIPort = UInt4

/// Raw HUI zone and port pair.
public typealias HUIZoneAndPort = (zone: HUIZone, port: HUIPort)
