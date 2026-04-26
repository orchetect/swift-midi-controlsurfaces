//
//  HUIDecoder.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDICore

/// Protocol that all HUI decoders conform to.
public protocol HUIDecoder: ReceivesMIDIEvents {
    /// The concrete HUI event type returned by the event handler.
    associatedtype Event: HUIEvent

    /// Event handler that is called to dispatch HUI events translated from received MIDI events.
    var eventHandler: EventHandler? { get set }

    /// Initialize with defaults.
    init()

    /// Resets state back to init state. Handlers are unaffected.
    func reset()
}

extension HUIDecoder {
    public typealias EventHandler = @Sendable (_ event: Event) -> Void

    public init(eventHandler: EventHandler? = nil) {
        self.init()
        self.eventHandler = eventHandler
    }
}
