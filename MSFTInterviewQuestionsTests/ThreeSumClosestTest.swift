//
//  ThreeSumClosestTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 16/01/2022.
//
import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class ThreeSumClosestTest: XCTestCase {
    func testSolver1() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([-1,2,1,-4], 1)
        XCTAssertEqual(result, 2)
    }
    
    func testSolver2() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([0,0,0], 1)
        XCTAssertEqual(result, 0)
    }
    
    func testSolver3() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([0,1,2], 3)
        XCTAssertEqual(result, 3)
    }
    
    func testSolver4() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([0,1,2], 0)
        XCTAssertEqual(result, 3)
    }
    
    func testSolver5() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([-1,2,1,-4], 1)
        XCTAssertEqual(result, 2)
    }
    
    func testSolver6() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([1,1,1,1], -100)
        XCTAssertEqual(result, 3)
    }
    
    func testSolver7() {
        let solver = ThreeSumClosestSolution()
        let result = solver.threeSumClosest([1,2,5,10,11], 12)
        XCTAssertEqual(result, 13)
    }
}

