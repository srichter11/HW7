//
//  SixthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var textOutput: UITextView!
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let arrayToRead = NSArray(contentsOfURL: getUrlForDocument("saveText.plist"))

        let outputArrayForm = arrayToRead as! [String]

        textOutput.text! = outputArrayForm.joinWithSeparator(" ")
        
    }
}