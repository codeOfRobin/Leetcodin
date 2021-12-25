//
//  TwoSumTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 25/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class TwoSumTest: XCTestCase {

    func testSolver1() {
        let result = TwoSumSolution().twoSum([2,7,11,15], 9)
        XCTAssertEqual(result, [0,1])
    }
    
    func testSolver2() {
        let result = TwoSumSolution().twoSum([3,2,4], 6)
        XCTAssertEqual(result, [1,2])
    }
    
    func testSolver3() {
        let result = TwoSumSolution().twoSum([3,3], 6)
        XCTAssertEqual(result, [0,1])
    }
    
    func testSolver4() {
        let result = TwoSumSolution().twoSum([2,5,5,11], 10)
        XCTAssertEqual(result, [1,2])
    }
    
}

