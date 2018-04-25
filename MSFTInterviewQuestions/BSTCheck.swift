//
//  BSTCheck.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class BSTCheck {
	public class TreeNode {
		public var val: Int
		public var left: TreeNode?
		public var right: TreeNode?
		public init(_ val: Int) {
			self.val = val
			self.left = nil
			self.right = nil
		}
	}

	func isValidBST(_ root: TreeNode?) -> Bool {
		return isSorted(nums: inOrderTraversal(root: root))
	}

	func inOrderTraversal(root: TreeNode?) -> [Int] {
		guard let node = root else {
			return []
		}
		let arr = [node.val]
		return inOrderTraversal(root: root?.left) + arr + inOrderTraversal(root: root?.right)
	}

	func isSorted(nums: [Int]) -> Bool {
		var last: Int? = nil
		for number in nums {
			if let last = last, last >= number {
				return false
			}
			last = number
		}
		return true
	}
}
