//
//  LinkedListTest.swift
//  MSFTInterviewQuestionsTests
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import MSFTInterviewQuestions

class LinkedListTest: XCTestCase {

	let solver = ReverseMiddleSortMergeLinkedList()

	func testLinkedListFromArray() {
		let array = Array(1...100)
		let listHead = ListNode.list(from: array)

		var curr = listHead

		for number in array {
			XCTAssertEqual(curr?.val, number)
			curr = curr?.next
		}
	}

    func testReverseLinkedList() {

		let array = Array(1...100)
		let head = ListNode.list(from: array)

		let reversed = solver.reverseList(head: head)

		var curr = reversed
		for number in array.reversed() {
			XCTAssertEqual(number, curr?.val)
			curr = curr?.next
		}
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

	func testMiddleLinkedList() {
		let array = Array(1...100)
		let head = ListNode.list(from: array)
		let mid = solver.findMiddle(head: head)
		let midVal = array[(array.startIndex + array.endIndex)/2]
		XCTAssertEqual(mid?.val, midVal)
	}

	func testMerging() {
		let array1 = [1,2,4]
		let array2 = [1,3,4]

		let list1 = ListNode.list(from: array1)
		let list2 = ListNode.list(from: array2)

		var curr = solver.mergeTwoLists(list1, list2)

		let expected = [1,1,2,3,4,4]
		for number in expected {
			XCTAssertEqual(number, curr?.val)
			curr = curr?.next
		}
	}

	func testMergingReversing() {
		let array1 = [1,2,4]
		let array2 = [1,3,4]

		let list1 = ListNode.list(from: array1)
		let list2 = ListNode.list(from: array2)

		var curr = solver.mergeTwoListsReversed(list1, l2: list2)

		let expected = [1,1,2,3,4,4]
		for number in expected.reversed() {
			XCTAssertEqual(number, curr?.val)
			curr = curr?.next
		}
	}

}
