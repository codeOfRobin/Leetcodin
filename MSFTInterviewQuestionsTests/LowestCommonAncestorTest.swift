//
//  LowestCommonAncestorTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class LowestCommonAncestorTest: XCTestCase {

    func testSolver() {
        let root = LowestCommonAncestor.TreeNode(1)
        let two = LowestCommonAncestor.TreeNode(2)
        let otherTwo = LowestCommonAncestor.TreeNode(2)
        let three = LowestCommonAncestor.TreeNode(3)
        let otherThree = LowestCommonAncestor.TreeNode(3)
        let four = LowestCommonAncestor.TreeNode(4)
        let otherFour = LowestCommonAncestor.TreeNode(4)

        two.left = three
        two.right = four

        otherTwo.left = otherFour
        otherTwo.right = otherThree

        root.left = two
        root.right = otherTwo
        
        LowestCommonAncestor().lowestCommonAncestor(root, four, three)

    }
}
