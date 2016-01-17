//
//  Day2_Protocol_Inheritance.swift
//  swift101
//
//  Created by Anak Mirasing on 1/17/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import Foundation

protocol ShootingGame {
    
    var gunName: String {
        get
    }
    
    func shoot()
    
}

protocol SportGame {
    func run()
}

protocol SportNShootingGame: ShootingGame, SportGame {
    var playerName: String {
        get set
    }
}

class PAPAMAMAGame: SportNShootingGame {
    
    var gunName = "ShotGun"
    func shoot() {
        print("SHOOT'EM UP !!!")
    }
    
    
    func run() {
        print("RUN RUN RUN")
    }
    
    var playerName = "PETER"
}