
//
//  StairClimbingTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import XCTest
@testable import MSFTInterviewQuestions

class StairClimbingTest: XCTestCase {

	let solver = ClimbingStairsSolver()

    func testSolver() {

		XCTAssertEqual(solver.solve(n: 2), 2)
		XCTAssertEqual(solver.solve(n: 3), 3)
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
