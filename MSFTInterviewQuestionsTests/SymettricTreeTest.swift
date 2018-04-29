//
//  SymettricTreeTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 26/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class SymettricTreeTest: XCTestCase {

	let solver = SymettricTreeSolver()

    func testSolver() {
		let root = TreeNode(1)
		let two = TreeNode(2)
		let otherTwo = TreeNode(2)
		let three = TreeNode(3)
		let otherThree = TreeNode(3)
		let four = TreeNode(4)
		let otherFour = TreeNode(4)

		two.left = three
		two.right = four

		otherTwo.left = otherFour
		otherTwo.right = otherThree

		root.left = two
		root.right = otherTwo

		XCTAssertTrue(solver.isSymmetric(root))

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

	func testStairClimbing() {
		let solver = LongestPalindromicSubstringSolver()
		XCTAssertEqual(solver.climbStairs(2), 2)
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
