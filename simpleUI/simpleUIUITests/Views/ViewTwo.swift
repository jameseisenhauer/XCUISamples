//
//  View2.swift
//  simpleUI
//
//  Created by James Eisenhauer on 9/10/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import Foundation
import XCTest



class ViewTwo {
    
    var text = Text()
    var button = Button()
    
    struct Text {
        
        var title =    XCUIApplication().staticTexts["second_title"]
        var subTitle = XCUIApplication().staticTexts["second_subtitle"]
    }
    
    struct Button: TabBarButtons {
        
        var someButton = XCUIApplication().buttons["some_button"]
    }
    
}

