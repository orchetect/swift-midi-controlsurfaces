//
//  MomentaryPressView.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftUI

struct MomentaryPressView<Content: View>: View {
    private let content: Content
    private let action: (_ state: Bool) -> Void

    @State private var isPressed = false

    init(
        action: @escaping (_ state: Bool) -> Void,
        _ content: Content
    ) {
        self.action = action
        self.content = content
    }

    var body: some View {
        content
            .highPriorityGesture(
                // this is a workaround to enable a button which triggers two
                // different actions: one on mouse-down and one on mouse-up
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        if !isPressed {
                            action(true)
                        }
                        isPressed = true
                    }
                    .onEnded { _ in
                        action(false)
                        isPressed = false
                    }
            )
    }
}

// MARK: - View Modifiers

extension View {
    func momentaryPressGesture(
        action: @escaping (_ state: Bool) -> Void
    ) -> some View {
        MomentaryPressView(action: action, self)
    }
}
