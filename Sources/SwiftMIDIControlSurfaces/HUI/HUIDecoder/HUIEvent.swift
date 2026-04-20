//
//  HUIEvent.swift
//  swift-midi • https://github.com/orchetect/swift-midi
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Protocol that all concrete HUI event types conform to.
public protocol HUIEvent: Sendable { }

protocol _HUIEvent: HUIEvent {
    init(from coreEvent: HUICoreEvent)
}
