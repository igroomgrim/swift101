//
//  Day99_prototype_pattern.swift
//  swift101
//
//  Created by Anak Mirasing on 10/1/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import Foundation

class Team : NSObject, NSCopying {
    var name:String
    var league:String
    var number:Int
    var stadium:String
    
    init(name:String, league:String, number:Int, stadium:String) {
        self.name = name
        self.league = league
        self.number = number
        self.stadium = stadium
    }
    
    func displayDetails() {
        print("Team Name : \(name)\n League : \(league)\n In number : \(number)\n Stadium : \(stadium)")
    }
    
    func copyWithZone(zone: NSZone) -> AnyObject {
        return Team(name: self.name, league: self.league, number: self.number, stadium: self.stadium)
    }
}