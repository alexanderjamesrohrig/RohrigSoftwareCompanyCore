// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

class RSCCore {
    static let shared = RSCCore()
    private init() {}
    let roundedCornerSize = CGSize(width: 25, height: 25)
}
