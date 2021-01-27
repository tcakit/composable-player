// Interface.swift
// Copyright (c) 2021 Joe Blau

import AVFoundation
import ComposableArchitecture

public struct AudioPlayer {
    public enum Action: Equatable {}

    public struct Error: Swift.Error, Equatable {
        public let error: NSError?

        public init(_ error: Swift.Error?) {
            self.error = error as NSError?
        }
    }

    // MARK: - Variables

    var create: (AnyHashable) -> Effect<Action, Never> = { _ in _unimplemented("create") }

    var destroy: (AnyHashable) -> Effect<Never, Never> = { _ in _unimplemented("destroy") }

    var play: (AnyHashable, URL) -> Effect<Never, Never> = { _, _ in _unimplemented("play") }

    var pause: (AnyHashable) -> Effect<Never, Never> = { _ in _unimplemented("stop") }

    // MARK: - Functions

    public func create(id: AnyHashable) -> Effect<Action, Never> {
        create(id)
    }

    public func destroy(id: AnyHashable) -> Effect<Never, Never> {
        destroy(id)
    }

    func play(id: AnyHashable, url: URL) -> Effect<Never, Never> {
        play(id, url)
    }

    func pause(id: AnyHashable) -> Effect<Never, Never> {
        pause(id)
    }
}
