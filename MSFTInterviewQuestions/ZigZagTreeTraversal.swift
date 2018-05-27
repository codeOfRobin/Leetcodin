//
//  ZigZagTreeTraversal.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 27/05/18.
//

import Foundation

class ZigZagTreeTraversal {
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

	func solve(_ root: TreeNode?) -> [[Int]] {
		var children: [TreeNode] = [root].compactMap { $0 }
		var result: [[Int]] = []

		var flag = true
		while !children.isEmpty {
			let nextRow = children
			result.append((flag ? nextRow : nextRow.reversed()).map{ $0.val })
			flag = !flag
			children = children.flatMap{ [$0.left, $0.right] }.compactMap{ $0 }
		}

		return result
	}
}
