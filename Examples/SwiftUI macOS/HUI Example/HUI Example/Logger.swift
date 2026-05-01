//
//  Logger.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import os.log

let logger = Logger(
    subsystem: Bundle.main.bundleIdentifier ?? "com.orchetect.swift-midi.HUIExample",
    category: "General"
)
