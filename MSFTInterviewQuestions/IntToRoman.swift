//
//  IntToRoman.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation

// https://leetcode.com/problems/integer-to-roman/

class IntToRomanSolution {
    func intToRoman(_ num: Int) -> String {
        switch num {
        case 0:
            return ""
        case 1..<4:
            return "I" + intToRoman(num - 1)
        case 4:
            return "IV" + intToRoman(num - 4)
        case 5..<9:
            return "V" + intToRoman(num - 5)
        case 9:
            return "IX" + intToRoman(num - 9)
        case 10..<40:
            return "X" + intToRoman(num - 10)
        case 40..<50:
            return "XL" + intToRoman(num - 40)
        case 50..<90:
            return "L" + intToRoman(num - 50)
        case 90..<100:
            return "XC" + intToRoman(num - 90)
        case 100..<400:
            return "C" + intToRoman(num - 100)
        case 400..<500:
            return "CD" + intToRoman(num - 400)
        case 500..<900:
            return "D" + intToRoman(num - 500)
        case 900..<1000:
            return "CM" + intToRoman(num - 900)
        default:
            return "M" + intToRoman(num - 1000)
        }
    }
}
