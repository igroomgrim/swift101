//: Playground - noun: a place where people can play

import UIKit

// Day 92 - Import your class into XCODE 7 Playground
let userAddress = Address(buildingName: "Shanghai Tower", buildingNumber: "BD01", street: "Shanghai Road")
userAddress.buildingName
userAddress.buildingNumber
userAddress.street
userAddress.displayDetail()

// Day 91 - Strings in Swift 2
var letters: [Character] = ["A", "R", "S", "E", "N", "A", "L"]
var string: String = String(letters)

print(letters.count)
print(string)
print(string.characters.count)

let registeredTrademark: Character = "\u{00AE}"
string.append(registeredTrademark)
print(string.characters.count)
print(string.characters.last!)
print(string.characters.first!)

string.characters.contains("S")