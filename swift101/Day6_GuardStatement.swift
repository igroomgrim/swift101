//
//  Day6_GuardStatement.swift
//  swift101
//
//  Created by Anak Mirasing on 1/13/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import Foundation

func playGuard(var x:Int?) {
    
    x = 9
    guard x > 10 else {
        print("Error because x > 10")
        return
    }
    
    // Do something 
    print("x is \(x)")
}

func guardString(str: String?) {
    guard let myString = str else {
        print("Input was nil")
        return
    }
    print("Input was \(myString)")
}

