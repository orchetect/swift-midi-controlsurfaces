//
//  HUIDecoderError.swift
//  swift-midi • https://github.com/orchetect/swift-midi
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Error type thrown by HUI decoders.
public enum HUIDecoderError: LocalizedError {
    /// Malformed.
    case malformed(_ verboseError: String)
    
    /// Unhandled.
    case unhandled(_ verboseError: String)
}

extension HUIDecoderError {
    public var errorDescription: String? {
        switch self {
        case let .malformed(verboseError):
            "Malformed: \(verboseError)"
        case let .unhandled(verboseError):
            "Unhandled: \(verboseError)"
        }
    }
}
