//
//  StairClimbing.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import Foundation

class ClimbingStairsSolver {
	func solve(n: Int) -> Int {
		guard n > 0 else {
			return 0
		}
		var dp: [Int] = (0..<n).map{ _ in 0 }
		dp[0] = 1
		dp[1] = 2

		for i in 2..<n {
			dp[i] = dp[i-1] + dp[i-2]
		}
		return dp.last!
	}
}
