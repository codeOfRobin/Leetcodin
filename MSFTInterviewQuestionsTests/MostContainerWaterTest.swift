//
//  MostContainerWaterTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 30/12/2021.
//

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class MostContainerWaterTest: XCTestCase {
    func testSolver1() {
        let heights = [1,8,6,2,5,4,8,3,7]
        XCTAssertEqual(MostContainerWaterSolver().maxArea(heights), 49)
    }
    
    func testSolver2() {
        let heights = [1,1]
        XCTAssertEqual(MostContainerWaterSolver().maxArea(heights), 1)
    }
}
