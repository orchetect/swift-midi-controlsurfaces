//
//  MomentaryButtonProtocol.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIControlSurfaces
import SwiftUI

protocol MomentaryButtonProtocol where Self: View {
    var title: LocalizedStringKey? { get }
    var fontSize: CGFloat? { get set }
    var width: CGFloat? { get set }
}

// MARK: - View Modifiers

extension MomentaryButtonProtocol {
    func fontSize(_ fontSize: CGFloat?) -> Self {
        var copy = self
        copy.fontSize = fontSize
        return copy
    }

    func width(_ width: CGFloat?) -> Self {
        var copy = self
        copy.width = width
        return copy
    }
}
