//
//  ReverseInteger.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 30/12/2021.
//

import Foundation

// https://leetcode.com/problems/reverse-integer/ 

class ReverseIntegerSolution {
    
    func reverse(_ x: Int) -> Int {
        var isNegative = x < 0
        var l = abs(x)
        var r = 0

        
        while l > 0 {
            if r > INT32_MAX / 10 {
                return 0
            }
            r = r * 10 + l % 10
            l = l / 10
        }
        return isNegative ? -r : r
    }
}
