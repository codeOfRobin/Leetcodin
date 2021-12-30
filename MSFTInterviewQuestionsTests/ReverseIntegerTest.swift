//
//  ReverseIntegerTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 30/12/2021.
//

import Foundation

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class ReverseIntegerTest: XCTestCase {
    func testSolver1() {
        let solver = ReverseIntegerSolution()
        XCTAssertEqual(solver.reverse(123), 321)
    }
    
    func testSolver2() {
        let solver = ReverseIntegerSolution()
        XCTAssertEqual(solver.reverse(-123), -321)
    }

    func testSolver3() {
        let solver = ReverseIntegerSolution()
        XCTAssertEqual(solver.reverse(120), 21)
    }
}
