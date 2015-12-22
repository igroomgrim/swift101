//
//  Day27_Comments.swift
//  swift101
//
//  Created by Anak Mirasing on 12/22/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit

class Day27_Comments: NSObject {
    // Use "//" - for single line comment 
    // Use /* and */ for multiline comments
    // But we can document the parameters and the return value from function
    
    // Exmaple:
    
    /**
        summaryNumber will summary tree integer and return the sum.
        
        - Parameter first: The first integer to add
        - Parameter second: The second integer to add
        - Parameter third: The third integer to add
        - Returns: The sum of the tree integers
    */
    func summaryNumber(first: Int, second: Int, third: Int) -> Int {
        return first + second + third
    }
}
