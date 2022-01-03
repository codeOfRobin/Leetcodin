//
//  ThreeSum.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation

// https://leetcode.com/problems/3sum/

class ThreeSumSolution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var triplets: [[Int]] = []
        var fixedIndex = 0
        var newNums = nums
        while newNums.count >= 3 {
            let fixed = newNums[fixedIndex]
            newNums.remove(at: fixedIndex)
            let sum = -fixed
            
            let complements: [Int: Int] = newNums.enumerated().reduce(into: [:]) { partialResult, arg1 in
                let (index, num) = arg1
                partialResult[sum - num] = index
            }
            
            guard let secondNumIndex = newNums.firstIndex(where: { complements[$0] != nil }),
                  let thirdNumIndex = complements[newNums[secondNumIndex]],
            secondNumIndex != thirdNumIndex else {
                continue
            }

            triplets.append([fixed, newNums[secondNumIndex], newNums[thirdNumIndex]])
            fixedIndex += 1
        }
        let x = ""
        x.first
        return triplets
    }
}
