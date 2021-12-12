//
//  DecodeWaysTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class DecodeWaysTest: XCTestCase {
    func testSolver1() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("12"), 2)
    }
    
    func testSolver2() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("226"), 6)
    }
    
    func testSolver3() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("0"), 0)
    }
    
    func testSolver4() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("06"), 0)
    }
}
