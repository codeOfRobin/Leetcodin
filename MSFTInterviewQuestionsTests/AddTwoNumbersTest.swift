//
//  AddTwoNumbersTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 25/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class AddTwoNumbersTest: XCTestCase {
    
    func testListGenerator() {
        let l1 = AddTwoNumbersSolution.ListNode.list(from: [2,4,3])
        XCTAssertEqual(l1?.val, 2)
        XCTAssertEqual(l1?.next?.val, 4)
        XCTAssertEqual(l1?.next?.next?.val, 3)
    }

    func testSolver1() {
        let l1 = AddTwoNumbersSolution.ListNode.list(from: [2,4,3])
        let l2 = AddTwoNumbersSolution.ListNode.list(from: [5,6,4])
        let result = AddTwoNumbersSolution().addTwoNumbers(l1, l2)
        
        XCTAssertEqual(AddTwoNumbersSolution.ListNode.list(from: result), [7,0,8])
    }
    
    func testSolver2() {
        let l1 = AddTwoNumbersSolution.ListNode.list(from: [0])
        let l2 = AddTwoNumbersSolution.ListNode.list(from: [0])
        let result = AddTwoNumbersSolution().addTwoNumbers(l1, l2)
        
        XCTAssertEqual(AddTwoNumbersSolution.ListNode.list(from: result), [0])
    }
    
    func testSolver3() {
        let l1 = AddTwoNumbersSolution.ListNode.list(from: [9,9,9,9,9,9,9])
        let l2 = AddTwoNumbersSolution.ListNode.list(from: [9,9,9,9])
        let result = AddTwoNumbersSolution().addTwoNumbers(l1, l2)
        
        XCTAssertEqual(AddTwoNumbersSolution.ListNode.list(from: result), [8,9,9,9,0,0,0,1])

    }
    
}

