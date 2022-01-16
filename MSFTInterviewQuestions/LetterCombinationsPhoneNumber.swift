//
//  LetterCombinationsPhoneNumber.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 05/01/2022.
//

import Foundation

class LetterCombinationsPhoneNumberSolution {
    func letterCombinations(_ digits: String) -> [String] {
        return stringFromDigits(digits: Array(digits), possibilities: [])
    }
    
    func stringFromDigits(digits: [Character], possibilities: [String]) -> [String] {
        if digits.isEmpty {
            return possibilities
        } else {
            let dict = [
                2: "abc",
                3: "def",
                4: "ghi",
                5: "jkl",
                6: "mno",
                7: "pqrs",
                8: "tuv",
                9: "wxyz"
            ]
            var copy = digits
            let digit = copy.removeFirst()
            let chars = dict[Int(String(digit))!]!
            let newPossibilities = (possibilities.isEmpty ? [""] : possibilities).map { possibility in chars.map{ possibility.appending(String($0)) } }.flatMap { $0 }
            return stringFromDigits(digits: copy, possibilities: newPossibilities)
        }
    }
}
