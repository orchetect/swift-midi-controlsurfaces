//
//  HUIHostModel.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftMIDIControlSurfaces

/// Host model. Can contain one or more banks.
/// Each bank corresponds to an entire HUI device (remote control surface).
@MainActor @Observable
class HUIHostModel {
    var bank0 = Bank()
}

extension HUIHostModel {
    @MainActor @Observable
    class Bank {
        var channel0: ChannelStrip = .init()
        var channel1: ChannelStrip = .init()
        var channel2: ChannelStrip = .init()
        var channel3: ChannelStrip = .init()
        var channel4: ChannelStrip = .init()
        var channel5: ChannelStrip = .init()
        var channel6: ChannelStrip = .init()
        var channel7: ChannelStrip = .init()
    }
}

extension HUIHostModel.Bank {
    @MainActor @Observable
    class ChannelStrip {
        var pan: Float = 0.5
        var vPotLowerLED: Bool = false
        var solo: Bool = false
        var mute: Bool = false
        var name: String = ""
        var selected: Bool = false
        var faderTouched: Bool = false
        var faderLevel: Float = 0.0
    }
}
