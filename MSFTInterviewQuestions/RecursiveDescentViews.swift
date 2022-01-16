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
}
