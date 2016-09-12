//
//  TabBar.swift
//  simpleUI
//
//  Created by James Eisenhauer on 9/10/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import Foundation
import XCTest



protocol TabBarButtons {}

extension TabBarButtons {
    
    var First: XCUIElement {
        return XCUIApplication().buttons["First"]
    }
    
    var Second: XCUIElement {
        return XCUIApplication().buttons["Second"]
    }
}
