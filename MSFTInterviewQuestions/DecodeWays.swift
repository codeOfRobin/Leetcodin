//
//  DecodeWays.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//


// https://leetcode.com/problems/decode-ways/

class DecodeWays {
    func numDecodings(_ s: String) -> Int {
        let mappings: [String: String] = "abcdefghijklmnopqrstuvwxyz".enumerated().reduce(into: [:]) { (dict, arg1) in
            let (index, char) = arg1
            dict[String(index + 1)] = String(char)
        }
        
        var memo: [String: Int] = [:]
        return generatePossibilities(for: s, mappings: mappings, memo: &memo)
    }
    
    func generatePossibilities(for string: String, mappings: [String: String], memo: inout [String: Int]) -> Int {
        
        if let result = memo[string] {
            return result
        }
        
        if string.first == "0" {
            return 0
        }
        
        if string.isEmpty {
            return 0
        }
        
        if string.count == 1 {
            let result = mappings[string] == nil ? 0 : 1
            memo[string] = result
            return result
        }
        
        if string.count == 2 {
            let result = (mappings[string] == nil ? 0 : 1) + (mappings[String(string.last!)] == nil ? 0 : 1)
            memo[string] = result
            return result
        }
        
        let firstSolution = {
            return self.generatePossibilities(for: String(string.dropFirst()), mappings: mappings, memo: &memo)
        }()
        let secondSolution = { () -> Int in
            if string.count > 1 && mappings[String(string.prefix(2))] != nil {
                return self.generatePossibilities(for: String(string.dropFirst(2)), mappings: mappings, memo: &memo)
            } else {
                return 0
            }
        }()
        
        memo[string] = firstSolution + secondSolution
        return firstSolution + secondSolution
    }
}



