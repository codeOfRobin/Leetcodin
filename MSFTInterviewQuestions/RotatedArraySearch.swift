//
//  RotatedArraySearch.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class RotatedArraySolver {
	func solve(nums: [Int], target: Int) -> Int {

		if nums.count == 0 {
			return -1
		}

		let pivot = findPivotIndex(nums: nums)

		let firstArray = Array(nums[0...pivot])
		let secondArray = Array(nums[(pivot + 1)...])

		let search1 = binarySearch(nums: firstArray, target: target)
		let search2 = binarySearch(nums: secondArray, target: target)

		if search1 < firstArray.endIndex, search1 >= firstArray.startIndex {
			if firstArray[search1] == target {
				return search1
			}
		}

		if search2 < secondArray.endIndex, search2 >= secondArray.startIndex {
			if secondArray[search2] == target {
				return search2 + pivot + 1
			}
		}

		return -1
	}

	func binarySearch(nums: [Int], target: Int) -> Int {
		var lowerBound = nums.startIndex
		var upperBound = nums.endIndex

		while(lowerBound < upperBound) {
			let midIndex = (lowerBound + upperBound)/2
			if nums[midIndex] == target {
				return midIndex
			} else if nums[midIndex] < target {
				lowerBound = midIndex + 1
			} else {
				upperBound = midIndex
			}

		}
		return -1
	}

	func findPivotIndex(nums: [Int]) -> Int {
		var lowerBound = nums.startIndex
		var upperBound = nums.endIndex

		while(lowerBound < upperBound) {
			let midIndex = (lowerBound + upperBound)/2
			if nums[midIndex] < nums[lowerBound] {
				upperBound = midIndex
			} else if nums[midIndex] > nums[lowerBound] {
				lowerBound = midIndex
			} else {
				upperBound = midIndex
			}
		}
		return upperBound
	}
}
