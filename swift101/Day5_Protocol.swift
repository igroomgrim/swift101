//
//  Day5_Protocol.swift
//  swift101
//
//  Created by Anak Mirasing on 1/14/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import Foundation

protocol Car {
    func Accelerate()
    func Drift()
}

class SuperCar: Car {
    
    func Accelerate() {
        print("GO GO FAST!!!")
    }
    
    func Drift() {
        print("Born to be Drift KING!")
    }
}