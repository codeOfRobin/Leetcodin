//
//  MissingNumberSolver.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class MissingNumberSolver {
	func solve(input: [Int]) -> Int {
		let n = input.count
		let sumOfNNumbers = n * (n + 1) / 2
		let sum = input.reduce(0, +)
		return sumOfNNumbers - sum
	}
}
