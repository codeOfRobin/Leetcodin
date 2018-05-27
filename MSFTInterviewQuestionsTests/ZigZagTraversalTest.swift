//
//  ZigZagTraversalTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import XCTest
@testable import MSFTInterviewQuestions

class ZigZagTraversalTest: XCTestCase {

	let solver = ZigZagTreeTraversal()

    func testSolver() {
		let root = ZigZagTreeTraversal.TreeNode(3)
		let nine = ZigZagTreeTraversal.TreeNode(9)
		let twenty = ZigZagTreeTraversal.TreeNode(20)

		let fifteen = ZigZagTreeTraversal.TreeNode(15)
		let seven = ZigZagTreeTraversal.TreeNode(7)

		root.left = nine
		root.right = twenty

		twenty.left = fifteen
		twenty.right = seven

		let expectedResult: [[Int]] = [
			[3],
			[20,9],
			[15,7]
		]

		XCTAssertEqual(solver.solve(root), expectedResult)
    }

	func testSecondCase() {
		let root = ZigZagTreeTraversal.TreeNode(1)
		let two = ZigZagTreeTraversal.TreeNode(2)
		let three = ZigZagTreeTraversal.TreeNode(3)

		let four = ZigZagTreeTraversal.TreeNode(4)
		let five = ZigZagTreeTraversal.TreeNode(5)

		root.left = two
		two.left = four
		root.right = three
		three.right = five

		let expectedResult: [[Int]] = [
			[1],
			[3,2],
			[4,5]
		]

		XCTAssertEqual(solver.solve(root), expectedResult)
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
