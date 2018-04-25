//
//  MissingNumberTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class MissingNumberTest: XCTestCase {

	let solver = MissingNumberSolver()

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
		let input1 = [9,6,4,2,3,5,7,0,1]
		XCTAssertEqual(solver.solve(input: input1), 8)

		let input2 = [3,0,1]
		XCTAssertEqual(solver.solve(input: input2), 2)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
