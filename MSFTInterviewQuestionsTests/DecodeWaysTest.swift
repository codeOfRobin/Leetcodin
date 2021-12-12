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
        XCTAssertEqual(solver.numDecodings("226"), 3)
    }
    
    func testSolver3() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("0"), 0)
    }
    
    func testSolver4() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("06"), 0)
    }
    
    func testSolver5() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("10"), 1)
    }
    
    func testSolver6() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("27"), 1)
    }
    
    func testSolver7() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("40"), 0)
    }
    
    func testSolver8() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("12312340"), 0)
    }
    
    func testSolver9() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("123123"), 9)
    }
    
    func testSolver10() {
        let solver = DecodeWays()
        XCTAssertEqual(solver.numDecodings("3123"), 3)
    }
}

