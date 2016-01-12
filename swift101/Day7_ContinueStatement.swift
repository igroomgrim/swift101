//
//  Day7_ContinueStatement.swift
//  swift101
//
//  Created by Anak Mirasing on 1/12/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import Foundation

func playContinue() {
    
    // Continue statement
    for i in 1...10 {
        if i % 2 == 0 {
            continue
        }
        print("\(i) % 2 != 0")
    }
    
    // Break statement
    for i in 1...10 {
        if i % 2 == 0 {
            break
        }
        print("\(i) % 2 != 0")
    }
    
}