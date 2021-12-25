//
//  UniqueFileNamesTest.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 24/12/2021.
//

import XCTest
@testable import MSFTInterviewQuestions


class UniqueFileNamesTest: XCTestCase {

    func testSolver1() {
        let result = UniqueFileNamesSolution().getFolderNames(["pes","fifa","gta","pes(2019)"])
        XCTAssertEqual(result, ["pes","fifa","gta","pes(2019)"])
    }
    
    func testSolver2() {
        let result = UniqueFileNamesSolution().getFolderNames(["gta","gta(1)","gta","avalon"])
        XCTAssertEqual(result, ["gta","gta(1)","gta(2)","avalon"])
    }
    
    func testSolver3() {
        let result = UniqueFileNamesSolution().getFolderNames(["onepiece","onepiece(1)","onepiece(2)","onepiece(3)","onepiece"])
        XCTAssertEqual(result, ["onepiece","onepiece(1)","onepiece(2)","onepiece(3)","onepiece(4)"])
    }
    
    func testSolver4() {
        let result = UniqueFileNamesSolution().getFolderNames(["kaido","kaido(1)","kaido","kaido(1)"])
        XCTAssertEqual(result, ["kaido","kaido(1)","kaido(2)","kaido(1)(1)"])
    }
    
}



