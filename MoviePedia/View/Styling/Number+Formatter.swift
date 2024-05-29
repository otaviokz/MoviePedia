//
//  Number+Formatter.swift
//  MoviePedia
//
//  Created by Otávio Zabaleta on 02/05/2024.
//

import Foundation

struct NumberFormatting {
    static var year: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = false
        return formatter
    }
}
