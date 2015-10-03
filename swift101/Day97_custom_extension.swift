//
//  Day97_custom_extension.swift
//  swift101
//
//  Created by Anak Mirasing on 10/3/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import Foundation

extension Double {
    
    var roundUpTwofractionDigits:Double {
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.NoStyle
        formatter.maximumFractionDigits = 2
        formatter.roundingMode = .RoundUp
        if let stringFromDouble =  formatter.stringFromNumber(self) {
            if let doubleFromString = formatter.numberFromString( stringFromDouble ) as? Double {
                return doubleFromString
            }
        }
        return 0
    }
    
}

extension String {
    
    var day: String {
        get {
            return self.substringWithRange(Range(start: self.startIndex.advancedBy(8), end: self.endIndex.advancedBy(-9)))
        }
        set {
            let normalDate = getDateNow()
            self.day = normalDate
        }
    }
}

func getDateNow()->String {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
    formatter.timeZone = NSTimeZone.localTimeZone()
    
    let date = NSDate()
    let nowDate = formatter.stringFromDate(date)
    
    return nowDate
}