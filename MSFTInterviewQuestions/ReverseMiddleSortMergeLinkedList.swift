//
//  ReverseMiddleLinkedList.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation


class ListNode {
	public var val: Int
	public var next: ListNode?
	public init(_ val: Int) {
		self.val = val
		self.next = nil
	}

	public static func list(from array: [Int]) -> ListNode? {
		var head: ListNode? = nil
		var curr: ListNode? = nil
		for number in array {
			if curr == nil {
				curr = ListNode(number)
				head = curr
			} else {
				curr?.next = ListNode(number)
				curr = curr?.next
			}
		}
		return head
	}
}


class ReverseMiddleSortMergeLinkedList {
	func reverseList(head: ListNode?) -> ListNode? {

		var pointer = head
		var previous: ListNode? = nil

		while (pointer != nil) {
			let next = pointer?.next
			pointer?.next = previous
			previous = pointer
			pointer = next
		}

		return previous
	}

	func findMiddle(head: ListNode?) -> ListNode? {
		var hare = head
		var tortoise = head

		while (hare != nil) {
			hare = hare?.next?.next
			tortoise = tortoise?.next
		}
		return tortoise
	}

	func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
		var head: ListNode? = nil
		var res = head

		var runner1 = l1
		var runner2 = l2

		while runner1 != nil || runner2 != nil {
			let nodeToForward: ListNode? = {
				if runner1 == nil, let second = runner2 {
					runner2 = runner2?.next
					return second
				}

				if runner2 == nil, let first = runner1 {
					runner1 = runner1?.next
					return first
				}

				guard let first = runner1, let second = runner2 else {
					return nil
				}

				if first.val < second.val {
					runner1 = runner1?.next
					return first
				} else {
					runner2 = runner2?.next
					return second
				}
			}()

			print(nodeToForward?.val)

			if res == nil {
				res = nodeToForward
				head = res
			} else {
				res?.next = nodeToForward
				res = nodeToForward
			}
		}

		return head
	}

	func mergeTwoListsReversed(_ l1: ListNode?, l2: ListNode?) -> ListNode? {

		var res: ListNode? = nil

		var runner1 = l1
		var runner2 = l2

		while runner1 != nil || runner2 != nil {

			let nodeToForward: ListNode? = {
				if runner1 == nil, let second = runner2 {
					runner2 = runner2?.next
					return second
				}

				if runner2 == nil, let first = runner1 {
					runner1 = runner1?.next
					return first
				}

				guard let first = runner1, let second = runner2 else {
					return nil
				}

				if first.val < second.val {
					runner1 = runner1?.next
					return first
				} else {
					runner2 = runner2?.next
					return second
				}
			}()

			if res == nil {
				res = nodeToForward
			} else {
				nodeToForward?.next = res
				res = nodeToForward
			}
		}


		return res
	}
}













