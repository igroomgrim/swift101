//
//  swift101UITests.swift
//  swift101UITests
//
//  Created by Anak Mirasing on 9/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import XCTest

class swift101UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoginForm() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let usernameTextField = app.textFields["username"]
        usernameTextField.tap()
        usernameTextField.typeText("myusername")
        
        let passwordTextField = app.textFields["password"]
        passwordTextField.tap()
        passwordTextField.typeText("mypassword")
        
        app.buttons["LOGIN"].tap()
        
    }
    
}
