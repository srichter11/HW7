//
//  FourthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextView!
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let output = try String(contentsOfURL: getUrlForDocument("output.txt"))
            textOutlet.text = output
            print(output)
        } catch {
            print("something went wrong")
        }
    }
 
}

// NS Userdefaults way would use this code
//let defaults = NSUserDefaults.standardUserDefaults()
//
//let outputText: AnyObject? = defaults.stringForKey("nexttext_string")
//
//textOutlet.text! = outputText! as! String
