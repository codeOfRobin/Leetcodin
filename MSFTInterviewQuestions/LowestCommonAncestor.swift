//
//  LowestCommonAncestor.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//


// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/

class LowestCommonAncestor {
    public class TreeNode: Hashable {
        public static func == (lhs: LowestCommonAncestor.TreeNode, rhs: LowestCommonAncestor.TreeNode) -> Bool {
            lhs.val == rhs.val
        }
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(self.val)
        }
        
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }

    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var stack = [root]
        
        var node1 = p!
        var node2 = q!
        
        var parentDict: [TreeNode: TreeNode] = [:]
        
        while (parentDict[node1] == nil || parentDict[node2] == nil ) {
            let node = stack.removeFirst()
            if let left = node?.left {
                parentDict[left] = node
                stack.append(left)
            }
            
            if let right = node?.right {
                parentDict[right] = node
                stack.append(right)
            }
        }
        
        var ancestors = Set<TreeNode>()
        
        var traverseNode1: TreeNode? = p
        
        while traverseNode1 != nil {
            ancestors.insert(traverseNode1!)
            traverseNode1 = parentDict[traverseNode1!]
        }
        
        var traverseNode2 = q!
        while (ancestors.contains(traverseNode2) == false) {
            traverseNode2 = parentDict[traverseNode2]!
        }
        return traverseNode2
    }
}
