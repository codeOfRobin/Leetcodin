//
//  RecursiveDescentViews.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 15/01/2022.
//

import Foundation
import AppKit

class RecursiveViewDescentSolution {
    func solve(view: NSView) {
        print(recursiveDescent(stack: [view], depth: 0))
    }
    
    
    func recursiveDescent(stack: [NSView], depth: Int) -> String {
        if stack.isEmpty {
            return ""
        } else {
            let children = stack.first!.subviews
            
            return String(repeating: "|", count: depth) + "Tag: \(stack.first!.alphaValue * 10) \n" +  recursiveDescent(stack: children, depth: depth + 1) + recursiveDescent(stack: Array(stack[1...]), depth: depth)
        }
    }
    
    // Me fucking around
    
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

    func traverse(_ root: TreeNode?) -> ListNode? {
        let dummy = ListNode(-1)
        NotificationCenter.default.post(name: NSNotification.Name("asdf"), object: dummy)
        return inOrderTraversal(root: root, head: dummy)?.next
    }

    func inOrderTraversal(root: TreeNode?, head: ListNode?) -> ListNode? {
        guard let node = root else {
            return nil
        }
        
        
        let newNode = ListNode(node.val)
        let left = inOrderTraversal(root: node.left, head: head)
        if left == nil {
            head?.next = newNode
        } else {
            head?.next = left
            left?.next = newNode
        }
        let right = inOrderTraversal(root: node.right, head: head)
        newNode.next = right
        
        return head?.next
    }
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
        
        static func list(from values: [Int]) -> ListNode? {
            let head: ListNode? = values.reversed().reduce(nil) { partialResult, value in
                let newNode = ListNode(value)
                newNode.next = partialResult
                return newNode
            }
            return head
        }
        
        static func list(from head: ListNode?) -> [Int] {
            var list: [Int] = []
            var i = head
            while (i != nil) {
                list.append(i!.val)
                i = i?.next
            }
            return list
        }
    }
}
