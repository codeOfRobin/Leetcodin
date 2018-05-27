//
//  MinCostClimbingStairsSolverTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import XCTest

@testable import MSFTInterviewQuestions

class MinCostClimbingStairsSolverTest: XCTestCase {

	let solver = MinCostClimbingStairsSolver()

    func testSolution() {

		XCTAssertEqual(solver.solve(cost: [10, 15, 20]), 15)
		XCTAssertEqual(solver.solve(cost: [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), 6)
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
