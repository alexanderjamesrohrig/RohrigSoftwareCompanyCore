//
//  Date+.swift
//
//
//  Created by Alexander Rohrig on 3/29/24.
//

import Foundation

public extension Date {
    /// Creates optional `Date` from year, month, and day.
    /// - Parameters:
    ///   - year: `Int` year number.
    ///   - month: `Int` month of the year.
    ///   - day: `Int` day of the month.
    /// - Returns: Optional `Date`.
    static func createFrom(year: Int, month: Int, day: Int) -> Date? {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.autoupdatingCurrent.date(from: components)
    }
}
