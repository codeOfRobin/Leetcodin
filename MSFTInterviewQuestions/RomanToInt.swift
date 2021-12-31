//
//  RomanToInt.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 31/12/2021.
//

import Foundation

// https://leetcode.com/problems/roman-to-integer/
class RomanToIntSolver {
    func romanToInt(_ s: String) -> Int {
        let characters = Array(s)
        let dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        var index = 0
        var number = 0
        while(index < characters.count) {
            let lastIndex = index
            let character = characters[index]
            if index < characters.count - 1 {
                switch (character, characters[index + 1]) {
                case ("I", "V"):
                    number += 4
                    index += 2
                case ("I", "X"):
                    number += 9
                    index += 2
                case ("X", "L"):
                    number += 40
                    index += 2
                case ("X", "C"):
                    number += 90
                    index += 2
                case ("C", "D"):
                    number += 400
                    index += 2
                case ("C", "M"):
                    number += 900
                    index += 2
                default: break
                }
            }
            if lastIndex == index {
                number += dict[character]!
                index += 1
            }
        }
        
        return number
    }
}
