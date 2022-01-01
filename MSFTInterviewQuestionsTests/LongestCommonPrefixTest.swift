//
//  LongestCommonPrefixTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class LongestCommonPrefixTest: XCTestCase {
    func testSolver1() {
        let result = LongestCommonPrefixSolution().longestCommonPrefix(["flower","flow","flight"])
        XCTAssertEqual(result, "fl")
    }
    
    func testSolver2() {
        let result = LongestCommonPrefixSolution().longestCommonPrefix(["dog","racecar","car"])
        XCTAssertEqual(result, "")
    }
    
    func testSolver3() {
        let result = LongestCommonPrefixSolution().longestCommonPrefix([""])
        XCTAssertEqual(result, "")
    }
    
    func testSolver4() {
        let result = LongestCommonPrefixSolution().longestCommonPrefix(["a"])
        XCTAssertEqual(result, "a")
    }
}
