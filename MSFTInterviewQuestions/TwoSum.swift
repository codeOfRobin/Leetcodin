//
//  TwoSum.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 25/12/2021.
//

import Foundation

// https://leetcode.com/problems/two-sum
class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let subtractedNums = nums.map{ -($0 - target) }
        let complementSet: [Int: Int] = subtractedNums.enumerated().reduce(into: [:]) { partialResult, arg1 in
            let (index, num) = arg1
            partialResult[num] = index
        }
        let (secondIndex, secondNumber) = nums.enumerated().first {
            complementSet[$0.1] != $0.0 && complementSet[$0.1] != nil
        }!
        return [secondIndex, complementSet[secondNumber]!]
    }
}
