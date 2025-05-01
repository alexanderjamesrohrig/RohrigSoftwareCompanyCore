//
//  UniversalImage.swift
//  RohrigSoftwareCompanyCore
//
//  Created by Alexander Rohrig on 5/1/25.
//

import Foundation
import SwiftUI

public struct UniversalImage {
    public init(data: Data) {
        self.data = Data()
    }
    
    public let data: Data
}

// MARK: UIImage
#if canImport(UIKit)
extension UniversalImage {}
#endif

// MARK: NSImage
#if canImport(AppKit)
@available(macOS 11.0, *)
extension UniversalImage {
    public var image: Image {
        let nsImage = NSImage(data: data) ?? NSImage()
        return Image(nsImage: nsImage)
    }
}
#endif
