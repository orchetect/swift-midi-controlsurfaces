//
//  Utilities.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftUI

extension CGRect {
    func offset(by off: CGSize) -> CGRect {
        offsetBy(dx: off.width, dy: off.height)
    }
}

extension Comparable {
    /// Returns the value clamped to the passed range.
    @_disfavoredOverload @inlinable
    func clamped(to limits: ClosedRange<Self>) -> Self {
        min(max(self, limits.lowerBound), limits.upperBound)
    }
}
