//
//  swift101Tests.swift
//  swift101Tests
//
//  Created by Anak Mirasing on 9/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import XCTest
@testable import swift101

class swift101Tests: XCTestCase {
    
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
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    // Day 63 - XCTest
    func testGetAddressFullDetail() {
        let myHome = Address(buildingName: "BS1112", buildingNumber: "1112", street: "BKK-ROAD")
        let fullDetailCheck = "BS1112, 1112, BKK-ROAD"
        // Try to check string in fullDetailCheck to other and see new testing result
        XCTAssertEqual(myHome.getFullDetail(), fullDetailCheck, "Full Address should be equal to \"BS1112, 1112, BKK-ROAD\"")
    }
    
}
