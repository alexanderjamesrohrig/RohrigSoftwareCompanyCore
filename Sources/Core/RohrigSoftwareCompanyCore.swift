// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
#if canImport(UIKit)
import UIKit
#endif

public class RSCCore {
    public static let shared = RSCCore()
    
    /// Standard rounded corner size
    public let roundedCornerSize = CGSize(width: 25, height: 25)
    
    public var isiPad: Bool {
        #if os(iOS)
        if UIDevice.current.userInterfaceIdiom == .pad {
            return true
        }
        #endif
        return false
    }
    
    private init() {}
}
