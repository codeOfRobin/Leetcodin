//
//  DuplicateFilesSolution.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 03/05/2022.
//

import Foundation

class DuplicateFilesSolution {
    
    func findDuplicate(_ paths: [String]) -> [[String]] {
        let pathsAndContent: [(String, String)] = paths.map { path -> [(String, String)] in
            let splits = Array(path.split(separator: " "))
            let dirName = splits[0]
            let filesAndContents: [(String, String)] =  splits[1...].map{$0.split(separator: "(")}.map{ (String($0[0]), String($0[1].dropLast()))}
            return filesAndContents.map { ("\(dirName)/\($0.0)", $0.1) }
        }.flatMap { $0 }
        
        let dict: [String: [String]] = pathsAndContent.reduce(into: [:]) { dict, arg1 in
            let (path, content) = arg1
            dict[content, default: []] += [path]
        }.filter {$0.value.count > 1}
        
        return Array(dict.values)
    }
}
