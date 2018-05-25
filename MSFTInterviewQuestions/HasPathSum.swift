//
//  HasPathSum.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

/**
Given a Binary Tree and a sum s, your task is to check whether there is a root to leaf path in that tree with the following sum . You are required to complete the function hasPathSum. You should not read any input from stdin/console. There are multiple test cases. For each test case, this method will be called individually.

Input:
The task is to complete the function hasPathSum which takes 2 arguments, root of the Tree and a value sum. The struct node has a data part which stores the data, pointer to left child and pointer to right child.
There are multiple test cases. For each test case, this method will be called individually.

Output:
The function should return the true if such path exist else return false.

Constraints:
1 <=T<= 30
1 <=Number of nodes<= 100
1 <=Data of a node<= 1000
*/

class HasPathSumSolver {
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

	func solve(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
		return hasSum(node: root, sum: sum, nodesUntilNow: []).filter{ $0.count > 0 }
	}

	func hasSum(node: TreeNode?, sum: Int, nodesUntilNow: [Int]) -> [[Int]] {
		guard let val = node?.val else {
			return [[]]
		}

		if sum - val == 0, node?.left == nil, node?.right == nil {
			return [nodesUntilNow + [val]]
		} else {
			return self.hasSum(node: node?.left, sum: sum - val, nodesUntilNow: nodesUntilNow + [val]) + self.hasSum(node: node?.right, sum: sum - val, nodesUntilNow: nodesUntilNow + [val])
		}
	}
}
