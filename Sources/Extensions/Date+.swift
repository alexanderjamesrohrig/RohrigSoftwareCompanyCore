//
//  Date+.swift
//
//
//  Created by Alexander Rohrig on 3/29/24.
//

import Foundation

public extension Date {
    public func createFrom(year: Int, month: Int, day: Int) -> Date? {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.autoupdatingCurrent.date(from: components)
    }
}
