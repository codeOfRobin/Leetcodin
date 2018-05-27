//
//  MinCostClimbingStairsSolver.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import Foundation

//https://leetcode.com/problems/min-cost-climbing-stairs/

class MinCostClimbingStairsSolver {
	func solve(cost: [Int]) -> Int {
		var f1 = 0
		var f2 = 0
		for x in cost.reversed() {
			(f1,f2) = (x + min(f1, f2), f1)
		}
		return min(f1, f2)
	}
}
