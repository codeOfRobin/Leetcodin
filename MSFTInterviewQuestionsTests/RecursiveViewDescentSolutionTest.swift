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
}

