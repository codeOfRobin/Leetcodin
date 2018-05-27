//
//  BuyAndSellOneStockTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import XCTest
@testable import MSFTInterviewQuestions

class BuyAndSellOneStockTest: XCTestCase {

	let solver = BuyAndSellOneStockSolver()

    func testSolver() {

		XCTAssertEqual(solver.solve(prices: [7,1,5,3,6,4]), 5)
		XCTAssertEqual(solver.solve(prices: [7,6,4,3,1]), 0)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

	func testPart2() {
		XCTAssertEqual(solver.solvePart2(prices: [7,1,5,3,6,4]), 7)
		XCTAssertEqual(solver.solvePart2(prices: [1,2,3,4,5]), 4)
		XCTAssertEqual(solver.solvePart2(prices: [7,6,4,3,1]), 0)
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
