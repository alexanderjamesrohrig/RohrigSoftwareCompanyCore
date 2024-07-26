// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
#if canImport(UIKit)
import UIKit
#endif

public class RSCCore {
    public static let shared = RSCCore()
    
    private let versionKey = "CFBundleShortVersionString"
    private let buildKey = "CFBundleVersion"
    
    /// Standard rounded corner size.
    public let roundedCornerSize = CGSize(width: 25, height: 25)
    
    /// `Bool` that is true when user is using an iPad.
    public var isiPad: Bool {
        #if os(iOS)
        if UIDevice.current.userInterfaceIdiom == .pad {
            return true
        }
        #endif
        return false
    }
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
