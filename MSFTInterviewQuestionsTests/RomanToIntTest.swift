//
//  RomanToIntTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 31/12/2021.
//

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class RomanToIntTest: XCTestCase {
    
    func testSolver1() {
        XCTAssertEqual(RomanToIntSolver().romanToInt("III"), 3)
    }
    
    func testSolver2() {
        XCTAssertEqual(RomanToIntSolver().romanToInt("LVIII"), 58)
    }
    
    func testSolver3() {
        XCTAssertEqual(RomanToIntSolver().romanToInt("MCMXCIV"), 1994)
    }
    
    func testSolver4() {
        XCTAssertEqual(RomanToIntSolver().romanToInt("III"), 3)
    }
}
