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

// Day 4 - Optional Protocols
@objc protocol Motorcycle {
    func Accelerate()
    func EngineBreak()
    optional func Wheelie()
}

class Ducati: Motorcycle {
    
    @objc func Accelerate() {
        print("GO GO FAST!!!")
    }
    
    @objc func EngineBreak() {
        print("Safe your self!!")
    }
    
    @objc func Wheelie() {
        print("STUN SHOW")
    }
}

class Yamaha: Motorcycle {
    
    @objc func Accelerate() {
        print("GO GO FAST!!!")
    }
    
    @objc func EngineBreak() {
        print("Safe your self!!")
    }
}

// Day 3 - Delegate
protocol HackingJob {
    func printScreen() -> String
}

class Hunted: HackingJob {
    var name: String
    
    func printScreen() -> String {
        return "Hack your screen"
    }
    
    init(name: String) {
        self.name = name
    }
}

class Hunter {
    
    var name: String
    var thisIsHunted: HackingJob?
    
    init(name: String) {
        self.name = name
    }
    
    func hacking() -> String {
        if let hunted = thisIsHunted {
            return hunted.printScreen()
        } else {
            return "NO ONE IS HUNTED"
        }
    }
}

// How to use 
/*
let hacker = Hunter(name: "XXX")
let sarah = Hunted(name: "sarah")
hacker.thisIsHunted = sarah
let result = hacker.hacking()
*/



