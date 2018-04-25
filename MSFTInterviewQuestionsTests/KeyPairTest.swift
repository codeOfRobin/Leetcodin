//
//  KeyPairTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class KeyPairTest: XCTestCase {

	let solver = KeyPairSolver()

    func testParse() {
        // This is an example of a functional test case.
		let inputString = """
		2
		6 16
		1 4 45 6 10 8
		5 10
		1 2 4 3 6
		"""

		let expectedOutput: [KeyPairProblemInput] = [
			KeyPairProblemInput(array: [1, 4, 45, 6, 10, 8], sum: 16),
			KeyPairProblemInput(array: [1, 2, 4, 3, 6], sum: 10)
		]

		XCTAssertEqual(solver.parse(inputString), expectedOutput)
		
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

	func testSolver() {
		let input: [KeyPairProblemInput] = [
			KeyPairProblemInput(array: [1, 4, 45, 6, 10, 8], sum: 16),
			KeyPairProblemInput(array: [1, 2, 4, 3, 6], sum: 10)
		]

		let solution1 = solver.solveParsedInput(input[0])!
		XCTAssertEqual(solution1.0, 4)
		XCTAssertEqual(solution1.1, 3)

		let solution2 = solver.solveParsedInput(input[1])!
		XCTAssertEqual(solution2.0, 4)
		XCTAssertEqual(solution2.1, 2)
	}

	func testOverall() {
		let inputString = """
		2
		6 16
		1 4 45 6 10 8
		5 10
		1 2 4 3 6
		"""
		let solutions = solver.solve(inputString)
		let solution1 = solutions[0]!
		XCTAssertEqual(solution1.0, 4)
		XCTAssertEqual(solution1.1, 3)

		let solution2 = solutions[1]!
		XCTAssertEqual(solution2.0, 4)
		XCTAssertEqual(solution2.1, 2)
	}
}
