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
        
        return generatePossibilities(for: s, mappings: mappings)
    }
    
    func generatePossibilities(for string: String, mappings: [String: String]) -> Int {
        if string.first == "0" {
            return 0
        }
        
        if string.isEmpty {
            return 0
        }
        // check both characters
        let firstCharacter = string.prefix(1)
        
        var shouldIncludeTwoCharactersFlag = false
        
        if string.count > 1 {
            let firstTwoCharacters  = String(string.prefix(2))
            if mappings[firstTwoCharacters] != nil {
                shouldIncludeTwoCharactersFlag = true
            }
        }
        
        let futureOneCharacterPossibilties = {
            return self.generatePossibilities(for: String(string.dropFirst()), mappings: mappings)
        }
        
        let futureTwoCharacterPossibilities = {
            return self.generatePossibilities(for: String(string.dropFirst(2)), mappings: mappings)
        }
        
        return 1 + (shouldIncludeTwoCharactersFlag ? 0 : futureOneCharacterPossibilties()) + (shouldIncludeTwoCharactersFlag ? (1 + futureTwoCharacterPossibilities()) : 0)
    }
}
