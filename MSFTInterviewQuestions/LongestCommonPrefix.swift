//
//  LongestCommonPrefix.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 01/01/2022.
//

import Foundation

// https://leetcode.com/problems/longest-common-prefix/

class LongestCommonPrefixSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = ""
        var index = 0
        let strings = strs.map(Array.init)
        let minLength = strs.min { (str1, str2) in
            return str1.count < str2.count
        }
        
        while index < (minLength?.count ?? 0) {
            let potentialCharacter = strings.first![index]
            if strings.allSatisfy({ $0[index] == potentialCharacter }) {
                prefix.append(potentialCharacter)
                index += 1
            } else {
                break
            }
        }
        return prefix
    }
}
