//
//  HUISectionLabel.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftUI

struct HUISectionLabel: View {
    var label: LocalizedStringKey

    init(_ label: LocalizedStringKey) {
        self.label = label
    }

    var body: some View {
        Text(label)
            .font(.system(size: 10))
    }
}
