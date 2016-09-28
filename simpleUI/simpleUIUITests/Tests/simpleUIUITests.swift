//
//  simpleUIUITests.swift
//  simpleUIUITests
//
//  Created by James Eisenhauer on 9/9/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//


import XCTest

class simpleUIUITests: XCTestCase {
        
    
    func testExample() {
        
        XCUIApplication().launch()
        
        
        
        let viewOne = ViewOne()
        let viewTwo = ViewTwo()
        
        
        XCTAssertTrue(viewOne.text.title.exists)
        XCTAssertEqual(viewOne.text.title.label, "First View")
        
        XCTAssertTrue(viewOne.text.subTitle.exists)
        XCTAssertEqual(viewOne.text.subTitle.label, "Loaded by FirstViewController")
        
        
        viewOne.button.Second.tap()
        XCTAssertTrue(viewTwo.text.subTitle.exists)
        XCTAssertEqual(viewTwo.text.title.label, "Second View")
        
        for _ in 1...5 {
            
            viewTwo.button.someButton.tap()
        }
        
        
        XCUIDevice.shared().press(.home)
        let safari = XCUIApplication(privateWithPath: nil, bundleID: "com.apple.mobilesafari")
        
        
        
        safari!.launch()
        safari!.launch()
        
        safari!.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).otherElements["URL"].tap()
        safari!.typeText("www.tavin.com")
        
        safari!.buttons["Go"].tap()
    
       // print(safari.debugDescription)
        
        print("")
        
        viewTwo.button.First.tap()
        viewOne.button.Second.tap()
        viewTwo.button.First.tap()
        
        XCTAssertEqual(viewOne.text.title.label, "First View")
        

    }
    
}
