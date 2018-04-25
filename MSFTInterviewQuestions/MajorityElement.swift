//
//  MajorityElement.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class MajorityElementSolver {

	struct ElementCount {
		let element: Int
		var count = 0
	}

	func solve(_ input: [Int], count: Int) -> [Int] {

		var votes: [ElementCount] = []

		for number in input {
			if let index = votes.index(where: { number == $0.element }) {
				votes[index].count += 1
			} else {
				if votes.count < count {
					votes.append(ElementCount(element: number, count: 1))
				} else {
					votes = votes.map{ ElementCount(element: $0.element, count: $0.count - 1) }
					votes = votes.filter{ $0.count > 0 }
				}
			}
		}

		let numberDivided = floor(Float(input.count)/Float(count))
		let results = votes.filter{ vote in
			input.filter{ vote.element == $0 }.count > Int(numberDivided)
		}

		return results.map{ $0.element }
	}
}

class SingleMajorityElement {

	func solve(_ input: [Int]) -> Int {
		var count = 0
		var candidate: Int? = nil

		for number in input {
			if count == 0 {
				candidate = number
			}
			count = (candidate == number) ? count + 1 : count - 1
		}
		return candidate!
	}

}














