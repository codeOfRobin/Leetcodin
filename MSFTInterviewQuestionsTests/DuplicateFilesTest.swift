//
//  DuplicateFilesTest.swift
//  MSFTInterviewQuestionsTests_macOS
//
//  Created by Robin Malhotra on 03/05/2022.
//

import Foundation


//https://leetcode.com/problems/find-duplicate-file-in-system/


import Foundation
import XCTest
@testable import MSFTInterviewQuestions


class DuplicateFilesTest: XCTestCase {
    
    func testSolver1() {
        let solver = DuplicateFilesSolution()
        let paths = ["root/a 1.txt(abcd) 2.txt(efgh)","root/c 3.txt(abcd)","root/c/d 4.txt(efgh)","root 4.txt(efgh)"]
        XCTAssertEqual(Set(solver.findDuplicate(paths)), Set([["root/a/2.txt","root/c/d/4.txt","root/4.txt"],["root/a/1.txt","root/c/3.txt"]]))
    }
    
    func testSolver2() {
        let solver = DuplicateFilesSolution()
        let paths = ["root/a 1.txt(abcd) 2.txt(efgh)","root/c 3.txt(abcd)","root/c/d 4.txt(efgh)"]
        XCTAssertEqual(Set(solver.findDuplicate(paths)), Set([["root/a/2.txt","root/c/d/4.txt"],["root/a/1.txt","root/c/3.txt"]]))
    }
}
