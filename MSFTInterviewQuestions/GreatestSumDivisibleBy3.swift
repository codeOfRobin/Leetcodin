//
//  GreatestSumDivisibleBy3.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 04/12/2021.
//

import Foundation

class GreatestSumDivisibleBy3 {
    //https://www.youtube.com/watch?v=LA5cIVdPnmU for reference
    static func maxSumDivThree(_ nums: [Int]) -> Int {
        var dps = [0,0,0]
        for i in 0..<nums.count {
            let num = nums[i]
            for currentSum in dps {
                let modulus = (currentSum + num) % 3
                dps[modulus] = max((currentSum + num), dps[modulus])
            }
        }
        return dps[0]
    }
}
