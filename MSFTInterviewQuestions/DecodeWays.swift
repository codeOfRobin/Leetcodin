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
        
        var memo: [String: Int] = [:]
        return generatePossibilities(for: s, mappings: mappings, memo: &memo)
    }
    
    func generatePossibilities(for string: String, mappings: [String: String], memo: inout [String: Int]) -> Int {
        
        if let result = memo[string] {
            return result
        }
        
        if string.first == "0" {
            return 0
        }
        
        if string.isEmpty {
            return 0
        }
        
        if string.count == 1 {
            let result = mappings[string] == nil ? 0 : 1
            memo[string] = result
            return result
        }
        
        if string.count == 2 {
            let result = (mappings[string] == nil ? 0 : 1) + (mappings[String(string.last!)] == nil ? 0 : 1)
            memo[string] = result
            return result
        }
        
        let firstSolution = {
            return self.generatePossibilities(for: String(string.dropFirst()), mappings: mappings, memo: &memo)
        }()
        let secondSolution = { () -> Int in
            if string.count > 1 && mappings[String(string.prefix(2))] != nil {
                return self.generatePossibilities(for: String(string.dropFirst(2)), mappings: mappings, memo: &memo)
            } else {
                return 0
            }
        }()
        
        memo[string] = firstSolution + secondSolution
        return firstSolution + secondSolution
        
        retry(task: { (completion: @escaping (Result<Data, Error>) -> Void)  in
            URLSession.shared.dataTask(with: URL(string: "")!) { data, response, error in
                if let data = data {
                    completion(.success(data))
                } else {
                    completion(.failure(error!))
                }
            }
        }, maxRetries: 10) { result in
            print(result)
        }
    }
}

func calculateDelay(count: Int) -> Int {
    return count * 10
}



//typealias CompletionHandler = ((Result<Data, Error>) -> Void)
//func retry(url: URL, currentRetries: Int = 0, maxRetries: Int, completion: @escaping CompletionHandler<>) {
//    URLSession.shared.dataTask(with: url) { data, response, error in
//        if let data = data {
//            completion(.success(data))
//        } else {
//            if currentRetries + 1 == maxRetries {
//                completion(.failure(error!))
//            } else {
//                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(calculateDelay(count: currentRetries))) {
//                    retry(url: url, currentRetries: currentRetries + 1, maxRetries: maxRetries, completion: completion)
//                }
//            }
//        }
//    }
//}


typealias CompletionHandler<T> = ((Result<T, Error>) -> Void)
func retry<T>(task: @escaping (@escaping CompletionHandler<T>) -> Void, currentRetries: Int = 0, maxRetries: Int, completion: @escaping CompletionHandler<T>) {
    task({
        result in
        switch result {
        case .success(let data):
            completion(.success(data))
        case .failure(let error):
            if currentRetries + 1 == maxRetries {
                completion(.failure(error))
            } else {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(calculateDelay(count: currentRetries))) {
                    retry(task: task, currentRetries: currentRetries + 1, maxRetries: maxRetries, completion: completion)
                }
            }
        }
    })
}



class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        let dict = nums.reduce(into: [:], {
            dict, number in
            dict[number, default: 0] += 1
        })
        
        return generatePermutations(permutations: [], dict: dict)
    }
    
    func generatePermutations(permutations: [[Int]], dict: [Int: Int]) -> [[Int]] {
        if dict.count == 0 {
            return permutations
        }
        
        return dict.reduce([]) {
            result, arg1 in
            let (key, value) = arg1
            var copy = dict
            copy.removeValue(forKey: key)
            
            let perms: [[Int]] = permutations.count > 0 ? permutations.map{ $0 + [value] } : [[value]]
            return result + generatePermutations(permutations: perms, dict: copy)
        }
    }
}
