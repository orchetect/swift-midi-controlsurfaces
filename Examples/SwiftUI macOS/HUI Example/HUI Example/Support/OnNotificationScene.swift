//
//  OnNotificationScene.swift
//  SwiftMIDI Control Surfaces • https://github.com/orchetect/swift-midi-controlsurfaces
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import AppKit
import SwiftUI

extension Scene {
    /// Scene modifier to run arbitrary code when the given notification is received.
    ///
    /// Example notifications:
    /// - `NSApplication.didFinishLaunchingNotification`
    /// - `NSApplication.didBecomeActiveNotification`
    public func onNotification(
        _ notificationName: NSNotification.Name,
        _ block: @escaping @Sendable @MainActor () -> Void
    ) -> some Scene {
        OnNotificationScene(notificationName, block) { self }
    }
}

struct OnNotificationScene<Content: Scene>: Scene {
    @State private var observer: Observer
    private let content: @MainActor @Sendable () -> Content

    init(
        _ notificationName: NSNotification.Name,
        _ block: @escaping @Sendable @MainActor () -> Void,
        @SceneBuilder content: @escaping @Sendable @MainActor () -> Content
    ) {
        self.content = content
        observer = Observer(notificationName: notificationName, block: block)
    }

    var body: some Scene {
        content()
    }

    /// Using a class allows us to remove the observer on scene deinit.
    private class Observer {
        private let notificationName: NSNotification.Name
        private let observer: any NSObjectProtocol

        init(
            notificationName: NSNotification.Name,
            block: @escaping @Sendable @MainActor () -> Void
        ) {
            self.notificationName = notificationName
            observer = NotificationCenter.default.addObserver(
                forName: notificationName,
                object: nil,
                queue: .main
            ) { _ in
                MainActor.assumeIsolated {
                    block()
                }
            }
        }

        deinit {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}

// MARK: - NSWorkspace

extension Scene {
    /// Scene modifier to run arbitrary code when the given workspace notification is received.
    ///
    /// Example notifications:
    /// - `NSWorkspace.didLaunchApplicationNotification`
    /// - `NSWorkspace.didTerminateApplicationNotification`
    public func onWorkspaceNotification(
        _ notificationName: NSNotification.Name,
        _ block: @escaping @Sendable @MainActor () -> Void
    ) -> some Scene {
        OnWorkspaceNotificationScene(notificationName, block) { self }
    }
}

struct OnWorkspaceNotificationScene<Content: Scene>: Scene {
    @State private var observer: Observer
    private let content: @MainActor @Sendable () -> Content

    init(
        _ notificationName: NSNotification.Name,
        _ block: @escaping @Sendable @MainActor () -> Void,
        @SceneBuilder content: @escaping @Sendable @MainActor () -> Content
    ) {
        self.content = content
        observer = Observer(notificationName: notificationName, block: block)
    }

    var body: some Scene {
        content()
    }

    /// Using a class allows us to remove the observer on scene deinit.
    private class Observer {
        private let notificationName: NSNotification.Name
        private let observer: any NSObjectProtocol

        init(
            notificationName: NSNotification.Name,
            block: @escaping @Sendable @MainActor () -> Void
        ) {
            self.notificationName = notificationName
            observer = NSWorkspace.shared.notificationCenter.addObserver(
                forName: notificationName,
                object: nil,
                queue: .main
            ) { _ in
                MainActor.assumeIsolated {
                    block()
                }
            }
        }

        deinit {
            NSWorkspace.shared.notificationCenter.removeObserver(observer)
        }
    }
}
