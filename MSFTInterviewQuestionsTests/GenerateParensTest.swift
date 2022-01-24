//
//  GenerateParensTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 19/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class GenerateParensTest: XCTestCase {
    
    func testSolver1() {
        let solver = GenerateParensSolution()
        XCTAssertEqual(solver.generateParenthesis(3), ["((()))","(()())","(())()","()(())","()()()"])
    }
}


