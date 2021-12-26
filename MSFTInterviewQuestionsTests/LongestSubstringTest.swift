//
//  LongestSubstringTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 25/12/2021.
//

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class LongestSubstringTest: XCTestCase {
    func testSolver1() {
        let solver = LongestSubstringSolution()
        XCTAssertEqual(solver.lengthOfLongestSubstring("abcabcbb"), 3)
    }
    
    func testSolver2() {
        let solver = LongestSubstringSolution()
        XCTAssertEqual(solver.lengthOfLongestSubstring("bbbbb"), 1)
    }
    
    func testSolver3() {
        let solver = LongestSubstringSolution()
        XCTAssertEqual(solver.lengthOfLongestSubstring("pwwkew"), 3)
    }
    
    func testSolver4() {
        let solver = LongestSubstringSolution()
        XCTAssertEqual(solver.lengthOfLongestSubstring(" "), 1)
    }
    
    func testSolver5() {
        let solver = LongestSubstringSolution()
        XCTAssertEqual(solver.lengthOfLongestSubstring("abba"), 2)
    }
    
    func testSolver6() {
        let solver = LongestSubstringSolution()
        XCTAssertEqual(solver.lengthOfLongestSubstring("nfpdmpi"), 5)
    }
}
