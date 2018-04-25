//
//  KeyPair.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

/**

Given an array A[] of n numbers and another number x, determine whether or not there exist two elements in A whose sum is exactly x.

Input:

The first line of input contains an integer T denoting the number of test cases.
The first line of each test case is N and X,N is the size of array.
The second line of each test case contains N integers representing array elements C[i].

Example:

Input:
2
6 16
1 4 45 6 10 8
5 10
1 2 4 3 6

Output:
Yes
Yes

*/

extension Collection {
	func pairwise() -> [(Element, Element)] {
		return stride(from: 0, to: self.count - 1, by: 2)
			.map { (self[self.index(self.startIndex, offsetBy: $0)], self[self.index(self.startIndex, offsetBy: $0 + 1)]) }
	}
}

struct KeyPairProblemInput: Equatable {
	let array: [Int]
	let sum: Int
}

class KeyPairSolver {

	public func solveParsedInput(_ input: KeyPairProblemInput) -> (Int, Int)? {
		var complementLookupTable: [Int: Int] = [:]
		for (index,number) in input.array.enumerated() {
			if let complementIndex = complementLookupTable[input.sum - number] {
				return (index, complementIndex)
			} else {
				complementLookupTable[number] = index
			}
		}
		return nil
	}

	public func parse(_ string: String) -> [KeyPairProblemInput] {
		let lines = string.components(separatedBy: "\n")
		guard let firstLine = lines.first, let numberOfProblems = Int(firstLine) else {
			fatalError("invalid number of problems")
		}

		let slice: ArraySlice<KeyPairProblemInput> = lines.dropFirst().pairwise().compactMap { (arraySizeAndSumString, arrayString) in
			guard let (size, sum) = arraySizeAndSumString.components(separatedBy: " ").compactMap(Int.init).pairwise().first else {
				return nil
			}
			let array = arrayString.components(separatedBy: " ").compactMap(Int.init).prefix(size)

			assert(array.count == size)

			return KeyPairProblemInput(array: Array(array), sum: sum)
		}.prefix(numberOfProblems)

		return Array(slice)
	}

	public func solve(_ input: String) -> [(Int, Int)?] {
		return self.parse(input).map(self.solveParsedInput)
	}
}










