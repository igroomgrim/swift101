//
//  Day10_GenericCollection_Set.swift
//  swift101
//
//  Created by Anak Mirasing on 1/9/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import Foundation

func playSet() {
    
    // Initialzes an empty Set of the String
    var myStringSet = Set<String>()
    
    //Initializes a mutable set of the String type with initial values
    var stringSet = Set(["DataOne", "DataTwo", "DataThree"])
    
    // Insert item into a Set
    myStringSet.insert("DataOne")
    myStringSet.insert("DataTwo")
    
    // Count item in a Set
    let setCount = myStringSet.count
    
    // Checking whether a set contains an item
    let contain = myStringSet.contains("DataTwo")
    
    // Remove items in a Set
    let removedItem = myStringSet.remove("DataTwo")
    
    // Remove all item
    myStringSet.removeAll()
    
    // Remove first
    let firstItem = myStringSet.removeFirst()
    
    // Day 9 - Set operations
    var set1 = Set([1,2,3,])
    var set2 = Set([3,4,5])
    
    // union and unionInPlace
    let newUnionSet = set1.union(set2) // [1,2,3,4,5]
    
    
    // subtract and subtractInPlace
    let newSubtractSet = set1.subtract(set2) // [2,3]
    
    // intersect and intersectInPlace
    let newIntersectSet = set1.intersect(set2) // [3]
    
    // exclusiveOr and exclusiveOrInPlace
    let newExclusiveOrSet = set1.exclusiveOr(set2) // [1,2,4,5]
}