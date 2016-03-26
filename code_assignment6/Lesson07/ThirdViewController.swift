//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "segueIdentifier"
            {
                if let destinationVC = segue.destinationViewController as? FourthViewController {
                   
                    let inputText = textOutlet.text!
                    
                    let fileURL = getUrlForDocument("output.txt")
        
                    do {
                        try inputText.writeToURL(fileURL, atomically: true, encoding: NSUTF8StringEncoding)
                    } catch {
                        print("someting went wrong")
                    }
                }
            }
    }
}



// NS Userdefaults way would use this code:

// let defaults = NSUserDefaults.standardUserDefaults()
//
// defaults.setObject(inputText, forKey: "nexttext_string")
//
// NSUserDefaults.standardUserDefaults().synchronize()




