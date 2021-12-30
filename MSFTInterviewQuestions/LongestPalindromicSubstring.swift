//
//  LongestPalindromicSubstringSolution.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 29/12/2021.
//

import Foundation

//TODO: Revise this
// https://leetcode.com/problems/longest-palindromic-substring/

class LongestPalindromicSubstringSolution {
    func longestPalindrome(_ s: String) -> String {
        let characters = Array(s)
        var start = 0
        var end = 0
        for (i, _) in characters.enumerated() {
            let l1 = startFromMiddle(characters: characters, left: i, right: i)
            let l2 = startFromMiddle(characters: characters, left: i, right: i + 1)
            
            let length = max(l1, l2)
            if length > (end - start) {
                start = i - ((length - 1) / 2)
                end = i + (length / 2)
            }
        }
        
        return String(characters[start..<(end + 1)])
    }
    
    func startFromMiddle(characters: [Character], left: Int, right: Int) -> Int {
        var left = left
        var right = right
        while(left >= 0 && right < characters.count && characters[left] == characters[right]) {
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}
