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
        
        viewTwo.button.First.tap()
        viewOne.button.Second.tap()
        viewTwo.button.First.tap()
        
        XCTAssertEqual(viewOne.text.title.label, "First View")
        

    }
    
}
