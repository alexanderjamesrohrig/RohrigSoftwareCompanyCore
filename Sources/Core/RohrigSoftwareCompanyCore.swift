// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public class RSCCore {
    public static let shared = RSCCore()
    private init() {}
    public let roundedCornerSize = CGSize(width: 25, height: 25)
}
