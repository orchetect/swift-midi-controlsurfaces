//
//  HUIExampleApp.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDIIO
import SwiftUI

@main
struct HUIExampleApp: App {
    @Environment(\.openWindow) private var openWindow

    @State private var midiHelper = MIDIHelper(start: true)

    var body: some Scene {
        Window("HUI Host", id: WindowID.huiHost) {
            HUIHostView()
                .frame(width: huiHostWidth, height: huiHostHeight)
                .environment(midiHelper)
        }
        .windowResizability(.contentSize)
        .defaultPosition(UnitPoint(x: 0.25, y: 0.4))

        Window("HUI Surface", id: WindowID.huiSurface) {
            HUIClientView()
                .frame(width: huiSurfaceWidth, height: huiSurfaceHeight)
                .environment(midiHelper)
        }
        .windowResizability(.contentSize)
        .defaultPosition(UnitPoint(x: 0.5, y: 0.4))
        .onNotification(NSApplication.didFinishLaunchingNotification) {
            onAppLaunch()
        }
    }
}

// MARK: - Static

extension HUIExampleApp {
    var huiHostWidth: CGFloat {
        300
    }

    var huiHostHeight: CGFloat {
        600
    }

    var huiSurfaceWidth: CGFloat {
        1180
    }

    var huiSurfaceHeight: CGFloat {
        920
    }
}

// MARK: - ViewModel

extension HUIExampleApp {
    private func onAppLaunch() {
        openWindow(id: WindowID.huiHost)
        openWindow(id: WindowID.huiSurface)
    }
}
