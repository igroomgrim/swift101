//
//  Day98_singleton_pattern.swift
//  swift101
//
//  Created by Anak Mirasing on 10/2/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import Foundation

class AnakDataService {
    
    class var sharedInstance: AnakDataService {
        struct Singleton {
            static let instance = AnakDataService()
        }
        return Singleton.instance
    }
    
    var money: Double = 0
    var eq: Int = 0
    
    func showMeTheMoney() {
        print("Money in his bag : \(self.money)")
    }
    
    func checkEQ() {
        print("EQ in his brain : \(self.eq)")
    }
    
    func giveMoneyForHim(money: Double) {
        self.money += money;
    }
    
    func increaseEQ() {
        self.eq++;
    }
    
    func decreaseEQ() {
        self.eq--;
    }
}

