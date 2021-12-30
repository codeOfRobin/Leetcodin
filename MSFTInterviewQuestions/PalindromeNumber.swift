//
//  PalindromeNumber.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 29/12/2021.
//

import Foundation

//TODO: Revise this

// https://leetcode.com/problems/palindrome-number/

class PalindromeNumberSolution {
    func isPalindrome(_ x: Int) -> Bool {
        var l = x
        var r = 0
        
        if x < 0 {
            return false
        }
        
        if (x % 10 == 0 && x != 0) {
            return false
        }
        
        while l > r {
            r = r * 10 + l % 10
            l = l / 10
        }
        
        return (l == r) || (l == r / 10)
    }
    
    /*
     1221, 0, 1221
     122 , 1, 1221
     12 , 12, 122
     */
    
}
