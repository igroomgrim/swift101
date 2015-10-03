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
        
        day97()
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
    
    // MARKL Day 97 - Custom Extension (Double, String)
    func day97() {
        
        let studentPoint: Double = 399.894515
        print("Student Point : \(studentPoint.roundUpTwofractionDigits)")
        
        let toDate:String = getDateNow()
        print("Date full format : \(toDate)")
        print("Date only day : \(toDate.day)")
        
    }
}

