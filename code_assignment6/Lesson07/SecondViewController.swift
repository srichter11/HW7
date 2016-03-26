//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textFieldOutlet: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let defaults = NSUserDefaults.standardUserDefaults()

        let text = defaults.stringForKey("settings_name")
        let number = defaults.doubleForKey("settings_slider")
        
        if text != nil {
            textFieldOutlet.text! = "\(text!) -- \(number)"
        }
        
    }
   
}
