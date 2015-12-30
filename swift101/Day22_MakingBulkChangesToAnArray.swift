//
//  Day22_MakingBulkChangesToAnArray.swift
//  swift101
//
//  Created by Anak Mirasing on 12/29/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit

class Day21_MakingBulkChangesToAnArray: NSObject {
    
    var myArray = [1,2,3,4,5,6,7,8,9,10]
    
    func changeToArray(a: Int, b: Int, c: Int) {
        myArray[3...5] = [44,55,66]
        // myArray contains [1,2,3,44,55,66,7,8,9,10]
        
        myArray[0...2] = [a,b,c]
        // myArray contains [a,b,c,44,55,66,7,8,9,10]
    }
    
    
    // Day 20 - The sortInPlace algorithm sorts the array in place.
    func sortMyArray() {
        myArray.sortInPlace(){ $0 < $1 }
        // myArray contains [1,2,3,4,5,6,7,8,9,10]
        
        myArray.sortInPlace(){ $1 < $0 }
        // myArray contains [10,9,8,7,6,5,4,3,2,1]
    }
}
