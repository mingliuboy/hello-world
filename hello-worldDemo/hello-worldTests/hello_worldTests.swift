//
//  hello_worldTests.swift
//  hello-worldTests
//
//  Created by liu ming on 2017/9/27.
//  Copyright © 2017年 liu ming. All rights reserved.
//

import XCTest
@testable import hello_world

class hello_worldTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        print("=============================================", terminator: "")
        print("This is an example of a functional test case.", terminator: "")
        print("=============================================", terminator: "")
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
