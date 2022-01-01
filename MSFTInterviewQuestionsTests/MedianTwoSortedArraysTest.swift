//
//  MedianTwoSortedArraysTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 26/12/2021.
//

import Foundation

import XCTest
@testable import MSFTInterviewQuestions


class MedianTwoSortedArraysTest: XCTestCase {
    func testSolver1() {
        let solver = MedianTwoSortedArrays()
        XCTAssertEqual(solver.findMedianSortedArrays([1,3], [2]), 2.0)
    }
    
    func testSolver2() {
        let solver = MedianTwoSortedArrays()
        XCTAssertEqual(solver.findMedianSortedArrays([1,2], [3,4]), 2.5)
    }
    
    func testSolver3() {
        let solver = MedianTwoSortedArrays()
        XCTAssertEqual(solver.findMedianSortedArrays([1,3,5,7,9], [2,4,6,8]), 5)
    }
    
    func testSolver4() {
        let solver = MedianTwoSortedArrays()
        XCTAssertEqual(solver.findMedianSortedArrays([1,3,5,7,9], [2,4,6,8,10]), 5.5)
    }
    
    func testSolver5() {
        let solver = MedianTwoSortedArrays()
        XCTAssertEqual(solver.findMedianSortedArrays([3,4], [1,2]), 2.5)
    }
}
