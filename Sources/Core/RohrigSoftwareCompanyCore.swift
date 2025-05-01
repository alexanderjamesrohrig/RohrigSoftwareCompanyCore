// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public class RSCCore {
    public static let shared = RSCCore()
    
    private let versionKey = "CFBundleShortVersionString"
    private let buildKey = "CFBundleVersion"
    
    /// Standard rounded corner size.
    public let roundedCornerSize = CGSize(width: 25, height: 25)
    
    /// `String` version number.
    public var version: String {
        let dictionary = Bundle.main.infoDictionary
        let version = dictionary?[versionKey] as? String
        return version ?? "nil"
    }
    
    /// `String` build number.
    public var build: String {
        let dictionary = Bundle.main.infoDictionary
        let build = dictionary?[buildKey] as? String
        return build ?? "nil"
    }
    
    private init() {}
}

// MARK: UIKit
#if canImport(UIKit)
import UIKit

extension RSCCore {
    /// `Bool` that is true when user is using an iPad.
    public var isiPad: Bool { UIDevice.current.userInterfaceIdiom == .pad }
    
    /// `String` that describes the current OS version
    public var osVersion: String { UIDevice.current.systemVersion }
}
#endif

// MARK: AppKit
#if canImport(AppKit)
import AppKit

extension RSCCore {
    /// `Bool` that is true when user is using an iPad.
    public var isiPad: Bool { false }
    
    /// `String` that describes the current OS version
    public var osVersion: String { ProcessInfo.processInfo.operatingSystemVersionString }
}
#endif
