//
//  AddTwoNumbers.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 25/12/2021.
//

import Foundation


// https://leetcode.com/problems/add-two-numbers/
class AddTwoNumbersSolution {
    
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
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var i = l1
        var j = l2
        var carry = 0
        var sumNode: ListNode? = nil
        var sumHead: ListNode? = nil
        
        while(i != nil || j != nil) {
            let sum = ((i?.val ?? 0) + (j?.val ?? 0) + carry) % 10
            carry = ((i?.val ?? 0) + (j?.val ?? 0) + carry) / 10
            let newNode = ListNode(sum)
            sumNode?.next = newNode
            sumNode = newNode
            
            if sumHead == nil {
                sumHead = sumNode
            }
            
            i = i?.next
            j = j?.next
        }
        
        if carry != 0 {
            let newNode = ListNode(carry)
            sumNode?.next = newNode
            sumNode = newNode
        }

        return sumHead
    }
    
}
