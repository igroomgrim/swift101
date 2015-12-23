//
//  Day26_CheckString_Prefix_Suffix.swift
//  swift101
//
//  Created by Anak Mirasing on 12/24/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit

// Day 26 - Check Prefix, Suffix in String
class Day26_CheckString_Prefix_Suffix: NSObject {
    
    func checkHasPrefixString(myString: String, prefixString: String) -> Bool {
        return myString.hasPrefix(prefixString)
    }
    
    func checkHasSuffixString(myString: String, suffixString: String) -> Bool {
        return myString.hasSuffix(suffixString)
    }
}
