//
//  RecursiveViewDescentSolutionTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 15/01/2022.
//

import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class RecursiveViewDescentSolutionTest: XCTestCase {
    
    func testSolver1() {
        let solver = RecursiveViewDescentSolution()
        let first = NSView()
        first.alphaValue = 0.1
        let second = NSView()
        second.alphaValue = 0.2
        let third = NSView()
        third.alphaValue = 0.3
        let fourth = NSView()
        fourth.alphaValue = 0.4
        
        first.addSubview(second)
        second.addSubview(third)
        first.addSubview(fourth)
        
        solver.solve(view: first)
    }
    
    func testSolver2() {
        let solver = RecursiveViewDescentSolution()
        let node1 = RecursiveViewDescentSolution.TreeNode(1)
        let node2 = RecursiveViewDescentSolution.TreeNode(2)
        let node3 = RecursiveViewDescentSolution.TreeNode(3)
        
        node2.left = node1
        node2.right = node3
        
        let solution = solver.traverse(node2)
        
        print(RecursiveViewDescentSolution.ListNode.list(from: solution))
    }
    
    func testSolver3() {
        let solver = RecursiveViewDescentSolution()
        let node1 = RecursiveViewDescentSolution.TreeNode(1)
        let node2 = RecursiveViewDescentSolution.TreeNode(2)
        let node3 = RecursiveViewDescentSolution.TreeNode(3)
        let node4 = RecursiveViewDescentSolution.TreeNode(4)
        let node5 = RecursiveViewDescentSolution.TreeNode(5)
        let node6 = RecursiveViewDescentSolution.TreeNode(6)
        let node7 = RecursiveViewDescentSolution.TreeNode(7)
        let node8 = RecursiveViewDescentSolution.TreeNode(8)
        
        node5.left = node3
        node5.right = node6
        
        node3.left = node2
        node2.left = node1
        node3.right = node4
        
        node6.right = node8
        node8.left = node7
        
        let solution = solver.traverse(node5)
        
        print(RecursiveViewDescentSolution.ListNode.list(from: solution))
    }
}

