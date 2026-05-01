//
//  MaxLengthFormatter.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftUI

/// Formatter that limits character length.
class MaxLengthFormatter: Formatter {
    var maxCharLength: Int

    // MARK: Init

    init(maxCharLength: Int) {
        self.maxCharLength = maxCharLength
        super.init()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        maxCharLength = 10000
        super.init(coder: coder)
    }

    // MARK: Overrides

    override func string(for obj: Any?) -> String? {
        guard let obj = obj as? String else { return nil }

        return String(obj.prefix(maxCharLength))
    }

    override func getObjectValue(
        _ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?,
        for string: String,
        errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?
    ) -> Bool {
        obj?.pointee = string as NSString
        return true
    }

    override func isPartialStringValid(
        _ partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString>,
        proposedSelectedRange proposedSelRangePtr: NSRangePointer?,
        originalString origString: String,
        originalSelectedRange origSelRange: NSRange,
        errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?
    ) -> Bool {
        let partialString = partialStringPtr.pointee as String
        return partialString.count <= maxCharLength
    }

    override func isPartialStringValid(
        _ partialString: String,
        newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>?,
        errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?
    ) -> Bool {
        partialString.count <= maxCharLength
    }
}
