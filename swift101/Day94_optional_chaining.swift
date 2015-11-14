//
//  Day94_optional_chaining.swift
//  swift101
//
//  Created by Anak Mirasing on 10/9/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import Foundation

class Dog {
    var name: String?
    var owner: Owner?
}

class Owner {
    var name: String?
    var age: Int?
    var address: Address?
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    init(buildingName: String, buildingNumber: String, street: String) {
        self.buildingName = buildingName
        self.buildingNumber = buildingNumber
        self.street = street
    }

    func getFullDetail() -> String {
        return buildingName! + ", " + buildingNumber! + ", " + street!
    }
}