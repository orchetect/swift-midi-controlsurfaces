//
//  HUISmallDisplayString.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// HUI small text display 4-character string.
public struct HUISmallDisplayString: HUIString, Equatable, Hashable {
    public typealias Element = HUISmallDisplayCharacter

    public static let staticCount = 4

    @HUIStringCharsValidation<Self>
    public var chars: [Element]

    public init() {
        chars = Self.defaultChars
    }
}

extension HUISmallDisplayString: Sendable { }
