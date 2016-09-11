//
//  View1.swift
//  simpleUI
//
//  Created by James Eisenhauer on 9/10/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import Foundation
import XCTest



class ViewOne {
    
    var text = Text()
    var button = Button()
        
    struct Text {
        
        var title = XCUIApplication().staticTexts["first_title"]
        var subTitle = XCUIApplication().staticTexts["first_subtitle"]

    }
    
    struct Button: ButtonsTabBar {
        
        
        
    }
    
        
}
