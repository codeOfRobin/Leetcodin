//
//  PalindromeNumberTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 29/12/2021.
//

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class PalindromeNumberTest: XCTestCase {
    func testSolver1() {
        let solver = PalindromeNumberSolution()
        XCTAssertTrue(solver.isPalindrome(121))
    }
    
    func testSolver2() {
        let solver = PalindromeNumberSolution()
        XCTAssertFalse(solver.isPalindrome(10))
    }
    
    func testSolver3() {
        let solver = PalindromeNumberSolution()
        XCTAssertTrue(solver.isPalindrome(1021111201))
    }
    
    func testSolver4() {
        let solver = PalindromeNumberSolution()
        print(INT32_MAX)
        XCTAssertFalse(solver.isPalindrome(12345))
    }
}
