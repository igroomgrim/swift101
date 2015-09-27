//
//  Day101_reduce_extension.swift
//  swift101
//
//  Created by Anak Mirasing on 9/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import Foundation

class Day101ReduceExtension {
    
    let weeklyImcome = [("Monday",180.5),
        ("Tuesday",200.0),
        ("Wednesday",140.75),
        ("Thursday",280.5),
        ("Friday",320.0),
        ("Saturday",338.75),
        ("Sunday",166.25)]
    
    func showTotalIncome() {
        let totalIncome = weeklyImcome.reduce(0,combine: {
            (total, income) -> Double in return total + income.1})
        
        print("Total income in this week : \(totalIncome)")
    }
    
    func showTotalIncomeOldStyle() {
        var totalIncome = 0.0
        for income in weeklyImcome {
            totalIncome += income.1
        }
        print("Total income in this week : \(totalIncome)")
    }
    
}