//
//  BSTCheckTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class BSTCheckTest: XCTestCase {

    func testExample() {
		let root = BSTCheck.TreeNode(10)
		let five = BSTCheck.TreeNode(5)
		let fifteen = BSTCheck.TreeNode(15)
		let six = BSTCheck.TreeNode(6)
		let twenty = BSTCheck.TreeNode(20)

		fifteen.left = six
		fifteen.right = twenty

		root.left = five
		root.right = fifteen

		let solver = BSTCheck().isValidBST(root)

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
