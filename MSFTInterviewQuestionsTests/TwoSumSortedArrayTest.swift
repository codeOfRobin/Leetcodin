//
//  TwoSumSortedArrayTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 03/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class TwoSumSortedArrayTest: XCTestCase {
    func testSolver1() {
        let solver = TwoSumSortedArraySolution()
        XCTAssertEqual(solver.twoSum([2,7,11,15], 9), [1,2])
    }
    
    func testSolver2() {
        let solver = TwoSumSortedArraySolution()
        XCTAssertEqual(solver.twoSum([2,3,4], 6), [1,3])
    }
    
    func testSolver3() {
        let solver = TwoSumSortedArraySolution()
        XCTAssertEqual(solver.twoSum([-1,0], -1), [1,2])
    }
}
