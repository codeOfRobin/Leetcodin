//
//  NumIslands.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 12/12/2021.
//

import Foundation


class NumIslands {
    func numIslands(_ grid: [[String]]) -> Int {
        var map = grid
        var numIslands = 0
        for i in 0..<map.count {
            for j in 0..<map[0].count {
                if map[i][j] == "1" {
                    numIslands += 1
                    var stack: [(Int, Int)] = [(i, j)]
                    map[i][j] = "0"
                    while (!stack.isEmpty) {
                        let (row, col) = stack.removeFirst()
                        if (row - 1 >= 0 && map[row - 1][col] == "1") {
                            stack.append((row-1, col))
                            map[row-1][col] = "0"
                        }
                        
                        if (col - 1 >= 0 && map[row][col - 1] == "1") {
                            stack.append((row, col - 1))
                            map[row][col - 1] = "0"
                        }
                        if (row + 1 < map.count && map[row + 1][col] == "1") {
                            stack.append((row + 1, col))
                            map[row + 1][col] = "0"
                        }
                        if (col + 1 < map[0].count && map[row][col + 1] == "1") {
                            stack.append((row, col + 1))
                            map[row][col + 1] = "0"
                        }
                    }
                }
            }
        }
        return numIslands
    }
}
