//
//  HUISurfaceEventDecoder.swift
//  swift-midi • https://github.com/orchetect/swift-midi
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDICore

/// ``HUISurfaceEvent`` decoder.
/// Parses received MIDI events and converts them to ``HUISurfaceEvent`` events.
public final class HUISurfaceEventDecoder: HUIDecoder, Sendable {
    // HUIDecoder
    
    public typealias Event = HUISurfaceEvent
    
    nonisolated(unsafe)
    public var eventHandler: EventHandler?
    
    public init() {
        decoder = HUICoreDecoder(role: .surface) { [weak self] coreEvent in
            let huiEvent = Event(from: coreEvent)
            self?.eventHandler?(huiEvent)
        }
    }

    public func reset() {
        decoder.reset()
    }
    
    // MARK: local state variables
    
    nonisolated(unsafe)
    var decoder: HUICoreDecoder!
    
    public func midiIn(event: MIDIEvent) {
        decoder.midiIn(event: event)
    }
}
