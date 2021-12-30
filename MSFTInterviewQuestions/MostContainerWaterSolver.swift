//
//  MostContainerWaterSolver.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 30/12/2021.
//

import Foundation
//TODO: Revise
// https://leetcode.com/problems/container-with-most-water/submissions/
class MostContainerWaterSolver {
    func maxArea(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count - 1
        
        var area = (r - l) * min(height[l], height[r])
        
        while l < r {
            let possibleArea = (r - l) * min(height[l], height[r])
            area = max(area, possibleArea)
            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return area
    }
}
