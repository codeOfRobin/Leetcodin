//
//  DivisibleBy3Solver.swift
//  MSFTInterviewQuestions
//
//  Created by Robin Malhotra on 25/04/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

/**

Given a binary number,  write a program that prints 1 if given binary number is a multiple of 3.  Else prints 0. The given number can be big upto 2^100

It is recommended to finish the task using one traversal of input binary string.

Input:
The first line contains T denoting the number of testcases. Then follows description of testcases.
Each case contains a string containing 0's and 1's.


Output:
For each test case, output a 1 if string is multiple of 3, else 0.

Constraints:
1<=T<=100
1<=Lenght of Input String<=100


Example:
Input:
2
1001
100

Output:
1
0

*/


public class DivisibleBy3Solver {
	public func solve(_ inputString: String) -> Bool {
		let sum = inputString.enumerated().reduce(0, { (result, tuple) in
			let (index, character) = tuple

			let number = Int(String(character))
			assert(number == 0 || number == 1)

			return (index % 2 == 0) ? result + number! : result - number!
		})

		return sum % 3 == 0
	}
}

