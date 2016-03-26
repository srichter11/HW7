//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("This is a string in user defaults", forKey: "test_string")
        defaults.setDouble(46, forKey: "test_number")
        
        let text = defaults.stringForKey("test_string")
        let number = defaults.doubleForKey("test_number")
        
        if text != nil {
            textViewOutlet.text! = "\(text!) \(number)"
        }
    
    }
}