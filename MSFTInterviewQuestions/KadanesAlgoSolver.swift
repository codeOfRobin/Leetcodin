//
//  KadanesAlgo.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

/**

Input:
The first line of input contains an integer T denoting the number of test cases. The description of T test cases follows. The first line of each test case contains a single integer N denoting the size of array. The second line contains N space-separated integers A1, A2, ..., AN denoting the elements of the array.

Output:
Print the maximum sum of the contiguous sub-array in a separate line for each test case.

Constraints:
1 ≤ T ≤ 200
1 ≤ N ≤ 1000
-100 ≤ A[i] <= 100

Example:
Input
2
3
1 2 3
4
-1 -2 -3 -4
Output
6
-1

*/


class KadanesAlgoSolver {
	func solve(_ input: [Int]) -> Int {
		var maxUntilNow = input[0]
		var maxEndingRange = input[0]

		for number in input[1...] {
			maxEndingRange = max(number, number + maxEndingRange)
			maxUntilNow = max(maxUntilNow, maxEndingRange)
		}
		return maxUntilNow
	}
}

















