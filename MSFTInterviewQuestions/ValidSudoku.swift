//
//  ValidSudoku.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//

import Foundation

// https://leetcode.com/problems/valid-sudoku/
class ValidSudoku {
    func isValidSudoku(_ board: [[String]]) -> Bool {
        var rows = board.map { $0.map { _ in 0 }  }
        var cols = board.map { $0.map { _ in 0 }  }
        var squares = board.map { $0.map { _ in 0 }  }
        
        var isValid = true
        outerLoop: for (i,row) in board.enumerated() {
            for (j, character) in row.enumerated() {
                if let number = Int.init(character) {
                    if rows[i][number - 1] == 0 {
                        rows[i][number - 1] = 1
                    } else {
                        isValid = false
                        break outerLoop
                    }
                    
                    if cols[j][number - 1] == 0 {
                        cols[j][number - 1] = 1
                    } else {
                        isValid = false
                        break outerLoop
                    }
                    
                    let sqIndex = (i/3) * 3 + j/3
                    if squares[sqIndex][number - 1] == 0 {
                        squares[sqIndex][number - 1] = 1
                    } else {
                        isValid = false
                        break outerLoop
                    }
                }
            }
        }
        return isValid
    }
}
