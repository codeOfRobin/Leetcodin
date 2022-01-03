//
//  TwoSumSortedArray.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 03/01/2022.
//

import Foundation

// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

class TwoSumSortedArraySolution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count - 1
        while (i < j) {
            let num = numbers[i]
            let targetComplement = target - num
            if numbers[j] == targetComplement {
                return [i + 1, j + 1]
            } else if numbers[j] > targetComplement {
                j -= 1
            } else if numbers[j] < targetComplement {
                i += 1
            }
        }
        return []
    }
}
