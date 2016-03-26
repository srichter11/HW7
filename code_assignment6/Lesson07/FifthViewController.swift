//
//  FIfthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var textFieldInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "nextSegueIdentifier" {
            if let destinationVC = segue.destinationViewController as? SixthViewController {
    
        let rawTextInput: String = textFieldInput.text!
    
        let rawTextArray: NSArray = rawTextInput.componentsSeparatedByString(" ")
       
        let arrayToSave = rawTextArray as NSArray
        arrayToSave.writeToURL(getUrlForDocument("saveText.plist"), atomically: true)
        
            }
        }
    }
}

//
//        if(!fileManager.fileExistsAtPath(path as String)) {
//        if let bundlePath = NSBundle.mainBundle().pathForResource("arrayData", ofType: "plist") {
//        let resultArray = NSMutableArray(contentsOfFile: bundlePath)
//        println("Bundle GameData.plist file is --> \(resultDictionary?.description)")
//        fileManager.copyItemAtPath(bundlePath, toPath: path, error: nil)
