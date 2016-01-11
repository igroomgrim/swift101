//
//  Day8_ForCase.swift
//  swift101
//
//  Created by Anak Mirasing on 1/11/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import Foundation

// Day8 - for-case, for-case with where statement
func playForCaseWhere() {
    
    let numbers: [Int?] = [1,2,3,nil,5,6,7,8,9,nil]
    for case let .Some(num) in numbers {
        print(num)
    }
    
    // for-case with a where
    for case let num? in numbers where num > 4 {
        print(num)
    }
}
