//
//  ImplementStrStr.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 03/01/2022.
//

import Foundation

// https://leetcode.com/problems/implement-strstr/

class ImplementStrStrSolution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        
        if needle.count > haystack.count {
            return -1
        }
        
        let str1 = Array(haystack)
        let str2 = Array(needle)
        var i = 0
        while i <= haystack.count - needle.count {
            
            if str1[i] == str2[0] && str1[i..<(i +  str2.count)] == str2[0..<str2.count] {
                return i
            } else {
                i += 1
            }
        }
        return -1
    }
}
