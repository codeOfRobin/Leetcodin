//
//  SymettricTreeSolver.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 26/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

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

class SymettricTreeSolver {
	func isSymmetric(_ root: TreeNode?) -> Bool {
		return isMirror(left: root, right: root)
	}

	func isMirror(left: TreeNode?, right: TreeNode?) -> Bool {
		guard let leftNode = left, let rightNode = right else {
			if right == nil && left == nil {
				return true
			} else {
				return false
			}
		}
		return (leftNode.val == rightNode.val) && isMirror(left: leftNode.left, right: rightNode.right) && isMirror(left: leftNode.right, right: rightNode.left)
	}
}
