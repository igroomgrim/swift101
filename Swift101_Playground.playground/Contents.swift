//: Playground - noun: a place where people can play

import UIKit

// Day 92 - Import your class into XCODE 7 Playground
/*
let userAddress = Address(buildingName: "Shanghai Tower", buildingNumber: "BD01", street: "Shanghai Road")
userAddress.buildingName
userAddress.buildingNumber
userAddress.street
userAddress.displayDetail()
*/

// Day 91 - Strings in Swift 2
/*
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
*/

// Day 90 - UIKit on playground
/*
let maView = MaView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
maView.backgroundColor = UIColor.blueColor()
maView

let testButton = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 44))
testButton.backgroundColor = UIColor.greenColor()
testButton

let maButton = MaButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
maButton.backgroundColor = UIColor.greenColor()
maButton.layer.cornerRadius = 4
maButton
*/

// Day 89 - Sets
var characters = Set<Character>()
characters.insert("R")
characters.insert("O")
characters.insert("C")
characters.insert("K")
characters

var pointSet: Set<Int> = [1,2,3,4,5,6,7,8,9]
for point in pointSet {
    print("\(point)")
}

for point in pointSet.sort() {
    print("\(point)")
}

var setOne: Set<Int> = [4,5,6,7,8,8]
var setTwo: Set<Int> = [1,2,3,4,5]

setOne.intersect(setTwo)
setOne.subtract(setTwo)
