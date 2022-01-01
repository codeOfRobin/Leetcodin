//
//  IntToRomanTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class IntToRomanTest: XCTestCase {
    
    func testSolver1() {
        let result = IntToRomanSolution().intToRoman(3)
        XCTAssertEqual(result, "III")
    }
    
    func testSolver2() {
        let result = IntToRomanSolution().intToRoman(58)
        XCTAssertEqual(result, "LVIII")
    }
    
    func testSolver3() {
        let result = IntToRomanSolution().intToRoman(1994)
        XCTAssertEqual(result, "MCMXCIV")
    }
    
}
