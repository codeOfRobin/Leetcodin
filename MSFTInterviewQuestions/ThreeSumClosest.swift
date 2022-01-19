//
//  ThreeSumClosest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 16/01/2022.
//

import Foundation

// https://leetcode.com/problems/3sum-closest/

class ThreeSumClosestSolution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let sorted = nums.sorted()
        
        var currentSum = Int.max
        
        for (i, num) in sorted.enumerated() {
            if i >= sorted.count - 2 {
               break
            }
            let result = twoSumClosest(Array(sorted[(i + 1)..<sorted.count]), target - num)
            if (currentSum == Int.max) ||  (abs(result + num - target ) < abs(currentSum - target)) {
                currentSum = result + num
            }
        }
        
        return currentSum
    }
    
    func twoSumClosest(_ nums: [Int], _ target : Int) -> Int {
        if nums.count == 2 {
            return nums[0] + nums[1]
        }
        if nums.count == 0 {
            return Int.max
        }
        var i = 0
        var j = nums.count - 1
        var diff = Int.max
        var currentSum = nums[i] + nums[j]
        while (i < j) {
            currentSum = nums[i] + nums[j]
            if abs(currentSum - target) < abs(diff) {
                diff = currentSum - target
            }
            
            if currentSum < target {
                i += 1
            } else if currentSum > target {
                j -= 1
            } else {
                break
            }
        }
        
        return diff + target
    }
}
