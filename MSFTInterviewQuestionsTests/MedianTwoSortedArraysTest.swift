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
}
