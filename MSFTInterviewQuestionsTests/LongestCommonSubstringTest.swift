//
//  LongestCommonSubstringTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 29/12/2021.
//

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class LongestCommonSubstringTest: XCTestCase {
    func testSolver1() {
        let solver = LongestCommonSubstringSolution()
        XCTAssertEqual(solver.longestPalindrome("babad"), "aba")
    }
    
    func testSolver2() {
        let solver = LongestCommonSubstringSolution()
        XCTAssertEqual(solver.longestPalindrome("cbbd"), "bb")
    }
}
