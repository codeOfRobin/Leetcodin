//
//  MajorityElementTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class MajorityElementTest: XCTestCase {

	let solver = MajorityElementSolver()

    func testSolver() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
//		XCTAssertEqual(solver.solve([1,2,3], count: 3), [1,2,3])
		XCTAssertEqual(solver.solve([1,1,1,2,3,4,5,6], count: 3), [1])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
