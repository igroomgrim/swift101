//
//  ViewController.swift
//  swift101
//
//  Created by Anak Mirasing on 9/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        day93()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Day 101 - Reduce Extension
    func day101() {
        
        let day101 = Day101ReduceExtension()
        day101.showTotalIncome()
        day101.showTotalIncomeOldStyle()
        
    }
    
    // MARK: Day 100 - Object Template Pattern
    func day102() {
        
        var books = [
            Book(name: "The Alchemist", author: "Paulo Coelho", year: 1988, pages: 999, stock: 50),
            Book(name: "The Artist’s way", author: "Julia Cameron", year: 1992, pages: 999, stock: 24),
            Book(name: "Life of pi", author: "Yann Martel", year: 2001, pages: 999, stock: 85),
            Book(name: "The road less traveled", author: "M. Scott Peck", year: 1978, pages: 999, stock: 60),
            Book(name: "The history of love", author: "Nicole Kraus", year: 2005, pages: 999, stock: 40)
        ]
        
        if (books[0].hasInStore) {
            let book = books[0] as Book
            print("Book name : \(book.name)" )
        }
        
    }
    
    // MARK: Day 99 - Prototype Pattern
    func day99() {
        let arsenal = Team(name: "Arsenal", league: "England", number: 10, stadium: "Emirates Stadium")
        let barcelona = arsenal.copy() as! Team;
        barcelona.name = "Barcelona"
        barcelona.league = "Spain"
        barcelona.number = 2
        barcelona.stadium = "Camp Nou"
        
        arsenal.displayDetails()
        barcelona.displayDetails()
    }
    
    // MARK: Day 98 - Singleton Pattern for my birthday :D
    func day98() {
        var eq = AnakDataService.sharedInstance.eq
        print("Anak EQ : \(eq)")
        AnakDataService.sharedInstance.checkEQ()
        AnakDataService.sharedInstance.increaseEQ()
        AnakDataService.sharedInstance.increaseEQ()
        AnakDataService.sharedInstance.checkEQ()
        eq = AnakDataService.sharedInstance.eq
        print("Anak EQ : \(eq)")
        print("Money in bag : \(AnakDataService.sharedInstance.money)")
        
        externalTest()
    }
    
    func externalTest() {
        AnakDataService.sharedInstance.checkEQ()
        AnakDataService.sharedInstance.decreaseEQ()
        AnakDataService.sharedInstance.checkEQ()
        AnakDataService.sharedInstance.giveMoneyForHim(100000000.0)
        AnakDataService.sharedInstance.showMeTheMoney()
    }
    
    // MARK: Day 97 - Custom Extension (Double, String)
    func day97() {
        
        let studentPoint: Double = 399.894515
        print("Student Point : \(studentPoint.roundUpTwofractionDigits)")
        
        let toDate:String = getDateNow()
        print("Date full format : \(toDate)")
        print("Date only day : \(toDate.day)")
        
    }
    
    // MARK: Day 96 - Closures
    func day96() {
        let peter = Student(name: "Peter", midtermPoint: 75, finalPoint: 80)
        let steve = Student(name: "Steve", midtermPoint: 68, finalPoint: 78)
        let wenger = Student(name: "Arsene", midtermPoint: 85, finalPoint: 90)
        
        let students = [peter,steve,wenger]
        
        let sortStudentsByMidtermsPoint = students.sort({(s1: Student, s2: Student) -> Bool in
            return s1.finalPoint > s2.finalPoint
        })
        
        for student in sortStudentsByMidtermsPoint {
            print("\(student.name) - \(student.finalPoint)")
        }
    }
    
    // MARK: Day 95 - Enumerations
    func day95() {
        let someDay = Days.Wednesday
        switch someDay {
            case .Monday:
                print("Hi! Monday")
            case .Tuesday:
                print("Hi! Tuesday")
            case .Wednesday:
                print("Hi! Wednesday")
            case .Thursday:
                print("Hi! Thursday")
            case .Friday:
                print("Hi! Friday")
            case .Saturday:
                print("Hi! Saturday")
            case .Sunday:
                print("Hi! Sunday")
//          No need default becuz we have all day case
//            default:
//                print("It's not day")
        }
    }
    
    // MARK: Day 94 - Optional Chaining
    func day94() {
        let coolComdominium = Address(buildingName: "BD-One", buildingNumber: "B0001", street: "Slow Life Road")
        let person = Owner()
        person.name = "Peter"
        person.age = 26
        person.address = coolComdominium
        
        let bobby = Dog()
        bobby.name = "Bobby"
        bobby.owner = person
        
        if let bobbyOwnerName = bobby.owner?.name {
            print("owner name : \(bobbyOwnerName)")
        }
    }
    
    // MARK: Day 93 - Tuples
    func day93() {
        // Named Tuples
        let ninja1 = NinjaTurtle(name: "Leonardo", age: 24)
        print(ninja1.description!.0)
        print(ninja1.description!.1)
        
        let ninja2 = NinjaTurtle(name: "Donatello", age: 25)
        print(ninja2.description!.0)
        print(ninja2.description!.1)
        
        // Unnamed Tuples
        let rat:(String, String, Int) = ("Rat Sensai", "Ninjutsu", 70)
        print(rat.0)
        print(rat.1)
        print(rat.2)
    }
}

