//
//  GenerateParensSolution.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 19/01/2022.
//

import Foundation

class GenerateParensSolution {
    func generateParenthesis(_ n: Int) -> [String] {
        return recursivelyGenerateParens(n: n)
    }
    
    func recursivelyGenerateParens(n: Int, s: [String] = [], left: Int = 0, right: Int = 0) -> [String] {
        if s.first?.count == 2 * n {
            return s
        } else if s.count == 0 {
            return recursivelyGenerateParens(n: n, s: ["("], left: 1)
        } else {
            let startingParams = left < n ? recursivelyGenerateParens(n: n, s: s.map{ $0.appending("(") }, left: left + 1, right:right) : []
            let endingParams = right < left ? recursivelyGenerateParens(n: n, s: s.map{ $0.appending(")") }, left: left, right:right + 1) : []
            return startingParams + endingParams
        }
    }
}

