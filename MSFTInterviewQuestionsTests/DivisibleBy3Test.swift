//
//  DivisibleBy3Test.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class DivisibleBy3Test: XCTestCase {

	let solver = DivisibleBy3Solver()

    func testExample() {
		let inputs = ["1001", "100"]

		let outputs = inputs.map(solver.solve)
		XCTAssertEqual(outputs, [true, false])
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
