//
//  Day46_Extension.swift
//  swift101
//
//  Created by Anak Mirasing on 12/2/15.
//  Copyright © 2015 iGROOMGRiM. All rights reserved.
//

import UIKit

class Day46ViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(animated: Bool) {
        self.viewDidDisappear(animated)
    }
    
}

// MARK: Day46 - Extension : URL escaped string
extension String {
    var URLEscapedString: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!
    }
}
