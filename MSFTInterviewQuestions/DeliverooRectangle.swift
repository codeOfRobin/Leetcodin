//
//  DeliverooRectangle.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 11/12/2021.
//

import Foundation

class DeliverooRectangleSolver {
    static func findFirstRectangles(input: [[Int]]) -> [Int] {
        var foundRectX = -1
        var foundRectY = -1
        outerLoop: for (i,row) in input.enumerated() {
            for (j,num) in row.enumerated() {
                print([i, j])
                if num == 0 {
                    foundRectY = i
                    foundRectX = j
                    break outerLoop
                }
            }
        }
        
        var rightX = input[foundRectY].count - 1
        for horizontalCounter in foundRectX..<(input[foundRectY].count) {
            if input[foundRectY][horizontalCounter] == 1 {
                rightX = horizontalCounter
                break
            }
        }
        
        var rightY = input.count - 1
        for verticalCounter in foundRectX..<(input.count) {
            if input[verticalCounter][foundRectX] == 1 {
                rightY = verticalCounter
                break
            }
        }
        
        print(rightX)
        print(rightY)
        return [foundRectX, foundRectY, rightX - 1, rightY - 1]
    }
}


class DeliverooRectangleSolver2 {
    static func findFirstRectangles(input: [[Int]]) -> [Int] {
        let firstRow = input.firstIndex(where: { row in
            return row.contains(where: { $0 == 0 })
        })!
        
        let firstCol = input[firstRow].firstIndex(where: { $0 == 0 })!
        let lastCol = input[firstRow].lastIndex(where: { $0 == 0 })!
        let lastRow = input.lastIndex(where: { $0[firstCol] == 0 })!
        return [firstCol, firstRow, lastCol, lastRow]
    }
}
