//
//  SafariViewController.swift
//  swift101
//
//  Created by Anak Mirasing on 12/5/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit
import SafariServices

class SafariViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Day43 - SFSafariViewController
    @IBAction func openWebSite(sender: AnyObject) {
        let myURL = "http://www.igroomgrim.com/"
        let sfViewController = SFSafariViewController(URL: NSURL(string: myURL)!, entersReaderIfAvailable: true)
        self.presentViewController(sfViewController, animated: true, completion: nil)
    }
    
}