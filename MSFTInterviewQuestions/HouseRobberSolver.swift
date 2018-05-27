//
//  HouseRobberSolver.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import Foundation
//https://leetcode.com/problems/house-robber/
class HouseRobberSolver {
	func solve(nums: [Int]) -> Int {
		guard nums.count > 0 else {
			return 0
		}

		guard nums.count > 1 else {
			return nums[0]
		}

		guard nums.count > 2 else {
			return max(nums[0], nums[1])
		}

		var dp = nums.map{ _ in 0 }
		dp[0] = nums[0]
		dp[1] = max(nums[0], nums[1])
		for i in 2..<nums.count {
			dp[i] = max(dp[i-1], dp[i-2] + nums[i])
		}

		return dp.last!
	}
}
