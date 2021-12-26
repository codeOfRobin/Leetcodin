//
//  LongestSubstring.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 25/12/2021.
//

import Foundation
//TODO: Revise this

// https://leetcode.com/problems/longest-substring-without-repeating-characters/
class LongestSubstringSolution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var charactersDict: [Character: Int] = [:]
        var startIndex = chars.startIndex
        var res = 0
        
        
        for (endIndex, char) in chars.enumerated() {
            if let index = charactersDict[char] {
                charactersDict[char] = endIndex
                startIndex = max(startIndex, chars.index(after: index))
                res = max(res, endIndex - startIndex + 1)
            } else {
                charactersDict[char] = endIndex
                res = max(res, endIndex - startIndex + 1)
            }
        }
        
        return res
    }
}
