//
//  KadanesAlgoTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class KadanesAlgoTest: XCTestCase {

	let solver = KadanesAlgoSolver()

    func testKadane() {
		XCTAssertEqual(solver.solve([1,2,3]), 6)
		XCTAssertEqual(solver.solve([-1,-2,-3,-4]), -1)
		XCTAssertEqual(solver.solve([-2,1,-3,4,-1,2,1,-5,4]), 6)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
