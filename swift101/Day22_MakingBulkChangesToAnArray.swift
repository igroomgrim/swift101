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
    
    // Day 19 - The sort algorithm sorts the array in place.
    func sortArray() {
        let arraySorted = myArray.sort(){ $0 < $1 }
        print(arraySorted)
        // arraySorted contains [1,2,3,4,5,6,7,8,9,10]
        
        let arrayReSorted = myArray.sort(){ $1 < $0 }
        print(arrayReSorted)
        // myArray contains [10,9,8,7,6,5,4,3,2,1]
        
        
    }
    
    // Day 18 - The filter algorithm will return a new array by filtering the original array.
    func filterArray() {
        
        let filtered = myArray.filter{$0 > 5 && $0 < 7}
        print(filtered)
        // filtered contain 6.. if the number is greater than 5 or less than 7; therefore, any number that is greater than 5 or less than 7 is included in the new filtered array.
    }
    
    // Day 15 - The map algorithm returns a new array that contains the results of applying the rules in the closure to each element of the array.
    func mapArray() {
        let oldArray = [10, 20, 30, 40, 50, 60, 70]
        let applied = oldArray.map{ $0 / 10}
        //applied contains 1,2,3,4,5,6,7
        print(applied)
    }
}
