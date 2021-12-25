//
//  UniqueFileNames.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 24/12/2021.
//

import Foundation

// https://leetcode.com/problems/making-file-names-unique/


class UniqueFileNamesSolution {
    
    func generateNewFolderName(prefix: String, smallestPossibleSuffixSet: [String: Int]) -> String {
        return "\(prefix)(\(smallestPossibleSuffixSet[prefix, default: 0] + 1))"
    }
    
    func getFolderNames(_ names: [String]) -> [String] {
        var smallestPossibleSuffix: [String: Int] = [:]
        var folderNamesSet = Set<String>()
        var folderNames: [String] = []
        for name in names {
            if folderNamesSet.contains(name) {
                var indexFlag = false
                var newName = name
                while (indexFlag == false) {
                    newName = generateNewFolderName(prefix: name, smallestPossibleSuffixSet: smallestPossibleSuffix)
                    if (folderNamesSet.contains(newName) == false) {
                        indexFlag = true
                    }
                    smallestPossibleSuffix[name] = smallestPossibleSuffix[name, default: 0] + 1
                }
                folderNames.append(newName)
                folderNamesSet.insert(newName)
            } else {
                folderNames.append(name)
                folderNamesSet.insert(name)
            }
        }
        return folderNames
    }
}
