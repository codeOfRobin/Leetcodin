//
//  LetterCombinationsPhoneNumberTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 05/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class LetterCombinationsPhoneNumberTest: XCTestCase {
    
    func testSolver1() {
        let solver = LetterCombinationsPhoneNumberSolution()
        XCTAssertEqual(solver.letterCombinations("23"), ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }
}
