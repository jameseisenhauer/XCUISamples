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
        
    
        XCTAssertEqual(viewOne.text.title.label, "First View")
        XCTAssertEqual(viewOne.text.title.label, "First View")
        XCTAssertEqual(viewOne.text.subTitle.label, "Loaded by FirstViewController")
        XCTAssertEqual(viewOne.text.title.label, "First View")
        XCTAssertEqual(viewOne.text.subTitle.label, "Loaded by FirstViewController")

        
        viewOne.button.Second.tap()
        XCTAssertEqual(viewTwo.text.title.label, "Second View")
        
         viewTwo.button.someButton.tap()
         viewTwo.button.someButton.tap()
         viewTwo.button.someButton.tap()
         viewTwo.button.someButton.tap()
         viewTwo.button.someButton.tap()
        
        
        viewTwo.button.First.tap()
        viewOne.button.Second.tap()
        viewTwo.button.First.tap()
        
        XCTAssertEqual(viewOne.text.title.label, "First View")
        

    }
    
}
