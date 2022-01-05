//
//  ThreeSum.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation

// https://leetcode.com/problems/3sum/

// TODO: revise

class ThreeSumSolution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var triplets: [[Int]] = []
        
        let sorted = nums.sorted()
        for (index, fixedNum) in sorted.enumerated() {
            if sorted[index] > 0 {
                break
            }
            
            guard index < sorted.count - 1 else {
                continue
            }
            
            if index == 0 || sorted[index] != sorted[index - 1] {
                let subArray = Array(sorted[(index + 1)...])
                let result = twoSum(subArray, -fixedNum)
                if result.count > 0 {
                    let convertedResult = result.map{ [fixedNum] + $0.map{ subArray[$0] } }
                    triplets += convertedResult
                }
            }
        }
        
       return triplets
    }
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [[Int]] {
        var i = 0
        var j = numbers.count - 1
        var results: [[Int]] = []
        while (i < j) {
            let num = numbers[i]
            let targetComplement = target - num
            if numbers[j] == targetComplement {
                results.append([i, j])
                i += 1
                j -= 1
                while i < j && numbers[i] == numbers[i - 1] {
                    i += 1
                }
            } else if numbers[j] > targetComplement {
                j -= 1
            } else if numbers[j] < targetComplement {
                i += 1
            }
        }
        return results
    }
}
