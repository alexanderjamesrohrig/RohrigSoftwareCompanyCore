//
//  Date+.swift
//
//
//  Created by Alexander Rohrig on 3/29/24.
//

import Foundation

public extension Date {
    public init?(year: Int, month: Int, day: Int) {
        let components = DateComponents(year: year, month: month, day: day)
        self.init(components.date)
    }
}
