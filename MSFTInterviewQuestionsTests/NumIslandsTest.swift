//
//  NumIslandsTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class NumIslandsTest: XCTestCase {

    func testSolver() {
        let grid = [
            ["1","1","1","1","0"],
            ["1","1","0","1","0"],
            ["1","1","0","0","0"],
            ["0","0","0","0","0"]
        ]
        
        XCTAssertEqual(NumIslands().numIslands(grid), 1)
    }
    
    func testSolver2() {
        let grid = [
          ["1","1","0","0","0"],
          ["1","1","0","0","0"],
          ["0","0","1","0","0"],
          ["0","0","0","1","1"]
        ]
        
        XCTAssertEqual(NumIslands().numIslands(grid), 3)
    }
}


