//
//  LongestPalindromicSubstring.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 26/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class LongestPalindromicSubstringSolver {
	func climbStairs(_ n: Int) -> Int {
		var dp = Array(0...n).map{ _ in 0 }

		if n > 2{
			dp[2] = 2
		}

		if n > 1 {
			dp[1] = 1
		}

		if n > 0 {
			dp[0] = 0
		}



		if n < 3 {
			return dp[n]
		}
		for i in 3...n {
			dp[i] = dp[i - 1] + dp[ i - 2]
		}
		return dp[n]
	}
}
