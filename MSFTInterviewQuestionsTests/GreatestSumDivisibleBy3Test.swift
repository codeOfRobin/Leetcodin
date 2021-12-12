//
//  GreatestSumDivisibleBy3Test.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 04/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class GreatestSumDivisibleBy3Test: XCTestCase {
    func testSolver1() {
        let nums = [3,6,5,1,8]
        let result = GreatestSumDivisibleBy3.maxSumDivThree(nums)
        XCTAssertEqual(result, 18)
    }
    
    func testSolver2() {
        let nums = [4]
        let result = GreatestSumDivisibleBy3.maxSumDivThree(nums)
        XCTAssertEqual(result, 0)
    }
    
    func testSolver3() {
        let nums = [1,2,3,4,4]
        let result = GreatestSumDivisibleBy3.maxSumDivThree(nums)
        XCTAssertEqual(result, 12)
    }
}
