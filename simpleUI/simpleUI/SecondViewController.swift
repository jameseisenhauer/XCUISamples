//
//  SecondViewController.swift
//  simpleUI
//
//  Created by James Eisenhauer on 9/9/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let button = UIButton(frame: CGRect(x: 50, y: 100, width: 200, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        button.backgroundColor = UIColor.darkGray
        button.addTarget(self, action: #selector(SecondViewController.action), for: UIControlEvents.touchDown)
        button.setTitle("Button", for: UIControlState.normal)
        button.accessibilityIdentifier = "some_button"
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func action(sender:UIButton!) {
        button.setTitle("Clicked!", for: UIControlState.highlighted)
        button.setTitleColor(UIColor.red, for: UIControlState.highlighted)

        print("Button Clicked")
    }
    
    

}


