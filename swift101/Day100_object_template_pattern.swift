//
//  Day100_object_template_pattern.swift
//  swift101
//
//  Created by Anak Mirasing on 9/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import Foundation

class Book {
    var name:String
    var author:String
    var year:Int
    var pages:Int
    var stock:Int
    
    init(name:String, author:String, year:Int, pages:Int, stock:Int) {
        self.name = name
        self.author = author
        self.year = year
        self.pages = pages
        self.stock = stock
    }
    
    var hasInStore:Bool {
        get {
            if (stock <= 0) {
                return false
            } else {
                return true
            }
        }
    }
}