//
//  ThreeSumTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class ThreeSumTest: XCTestCase {
    func testSolver1() {
        let solver = ThreeSumSolution()
        XCTAssertEqual(solver.threeSum([-1,0,1,2,-1,-4]), [[-1,-1,2],[-1,0,1]])
    }
    
    func testSolver2() {
        let solver = ThreeSumSolution()
        XCTAssertEqual(solver.threeSum([]), [])
    }
    
    func testSolver3() {
        let solver = ThreeSumSolution()
        XCTAssertEqual(solver.threeSum([0]), [])
    }
    
    func testSolver4() {
        let solver = ThreeSumSolution()
        XCTAssertEqual(solver.threeSum([0,0]), [])
    }
}
