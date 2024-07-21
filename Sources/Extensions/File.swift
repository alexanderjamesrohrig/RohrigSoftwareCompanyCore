//
//  File.swift
//  
//
//  Created by Alexander Rohrig on 7/21/24.
//

import Foundation

extension Int {
    var digits: [Int] {
        guard self >= 0 else {
            return []
        }
        var digits: [Int] = []
        var num = self
        digits.append(num % 10)
        while num >= 10  {
            num = num / 10
            digits.append(num % 10)
        }
        return digits.reversed()
    }
}
