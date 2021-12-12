//
//  DeliverooRectangleTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 11/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class DeliverooRectangleTest: XCTestCase {
    func testSolver1() {
        let nums = [
            [1, 1, 1, 1, 1, 1, 1, 1],
            [1, 1, 1, 1, 1, 1, 1, 1],
            [1, 1, 1, 0, 0, 0, 1, 1],
            [1, 1, 1, 0, 0, 0, 1, 1],
            [1, 1, 1, 1, 1, 1, 1, 1],
            [1, 1, 1, 1, 1, 1, 1, 1]
        ]
        
        let result = DeliverooRectangleSolver.findFirstRectangles(input: nums)
        XCTAssertEqual(result, [3,2,5,3])
    }
    
    func testSolver2() {
        let nums = [
            [1, 1, 1, 1, 1, 1, 1, 1],
            [1, 1, 1, 1, 1, 1, 1, 1],
            [1, 1, 1, 0, 0, 0, 1, 1],
            [1, 1, 1, 0, 0, 0, 1, 1],
            [1, 1, 1, 1, 1, 1, 1, 1],
            [1, 1, 1, 1, 1, 1, 1, 1]
        ]
        
        let result = DeliverooRectangleSolver2.findFirstRectangles(input: nums)
        XCTAssertEqual(result, [3,2,5,3])
    }
}

