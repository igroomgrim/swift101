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

// MARK: Day45 - Extension : Init UIColor by Red/Green/Blue
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed   = CGFloat(Double(red) / 255.0)
        let newGreen = CGFloat(Double(green) / 255.0)
        let newBlue  = CGFloat(Double(blue) / 255.0)
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }
}
