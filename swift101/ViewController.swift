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
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        day67()
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
    
    // MARK: Day 81 - Basic Animation
    @IBOutlet weak var blueView: UIView!
    func day81() {
//        UIView.animateWithDuration(1.0, animations: {
//            self.blueView.center.y += self.view.bounds.width
//        })
//        
//        UIView.animateWithDuration(0.5, delay: 0.3, options: [], animations: {
//            self.blueView.center.y += self.view.bounds.width
//            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, options: [.CurveEaseIn], animations: { () -> Void in
            self.blueView.center.y += self.view.bounds.width
        }) { (Bool) -> Void in
            print("Animated")
        }
    }
    
    // MARK: Day 80 - Basic Spring Animations
    func day80() {
        
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: { () -> Void in
            
            self.blueView.center.y += self.view.bounds.width
            
        }) { (Bool) -> Void in
            
            print("Animated Spring")
            
        }
        
    }
    
    // MARK: Day 79 - Animation Transitions
    func day79() {
        var containerView: UIView?
        containerView = UIView(frame: view.bounds)
        containerView?.backgroundColor = UIColor.grayColor()
        view.addSubview(containerView!)
        
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = containerView!.center
        animView.backgroundColor = UIColor.whiteColor()
        
        UIView.transitionWithView(containerView!, duration: 3, options: [.CurveEaseInOut, .TransitionFlipFromTop], animations: {
            containerView!.addSubview(animView)
        }, completion: {finished in
            print("transitionWithView : finished")
        })

    }
    
    // MARK: Day 78 - Animation Transitions (Hide/Show/Fade-in/Fade-Out)
    func day78() {
        var containerView: UIView?
        containerView = UIView(frame: view.bounds)
        containerView?.backgroundColor = UIColor.grayColor()
        view.addSubview(containerView!)
        
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = containerView!.center
        animView.backgroundColor = UIColor.whiteColor()
        
        UIView.transitionWithView(containerView!, duration: 3, options: [.CurveEaseInOut, .TransitionFlipFromTop], animations: {
            containerView!.addSubview(animView)
            
            }, completion: {finished in
                
                UIView.transitionWithView(animView, duration: 3.0, options: [], animations: {
                    // Hidden View use .hidden
                    // animView.hidden = true
                    
                    // alpha transparency use .alpha 0 to 1
                    animView.alpha = 0
                    
                    }, completion: {finished in
                        print("Transitions (Hide/Show/Fade-in/Fade-Out) : finished")
                })
        })
        
       
        
    }
    
    // MARK: Day 77 - Animation with CGAffineTransformMakeScale and CGAffineTransformMakeTranslation
    func day77() {
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = view.center
        animView.backgroundColor = UIColor.blueColor()
        view.addSubview(animView)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: .CurveEaseOut, animations: {
            
//            animView.transform = CGAffineTransformMakeScale(1.5, 1.5)
//            animView.transform = CGAffineTransformMakeTranslation(0, 50)
            animView.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5),CGAffineTransformMakeTranslation(0, 50))
            }, completion: {_ in
            
            print("Transitions : finished")
//            animView.transform = CGAffineTransformIdentity

        })
    }
    
    // MARK: Day 76 - Animation with CGAffineTransformRotate and CGAffineTransformInvert
    func day76() {
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = view.center
        animView.backgroundColor = UIColor.blueColor()
        view.addSubview(animView)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: .CurveEaseOut, animations: {
            
//            animView.transform = CGAffineTransformRotate(CGAffineTransformMakeScale(1.5, 1.5), 45)
//            animView.transform = CGAffineTransformInvert(CGAffineTransformMakeScale(1.5, 1.5))
            animView.transform = CGAffineTransformInvert(CGAffineTransformRotate(CGAffineTransformMakeScale(1.5, 1.5), 45))
            }, completion: {_ in
                
                print("Transitions : finished")
                //            animView.transform = CGAffineTransformIdentity
                
        })
    }
    
    // MARK: Day 75 - Animation with CGPointApplyAffineTransform
    func day75() {
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = view.center
        animView.backgroundColor = UIColor.blueColor()
        view.addSubview(animView)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: .CurveEaseOut, animations: {
            
            animView.center = CGPointApplyAffineTransform(CGPointMake(50, 50), CGAffineTransformMakeScale(1.5, 1.5))
            
            }, completion: {_ in
                
                print("Transitions : finished")
                //            animView.transform = CGAffineTransformIdentity
                
        })
    }
    
    // MARK: Day 74 - Animation with CGSizeApplyAffineTransform
    func day74() {
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = view.center
        animView.backgroundColor = UIColor.blueColor()
        view.addSubview(animView)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: .CurveEaseOut, animations: {
            
            animView.bounds.size = CGSizeApplyAffineTransform(CGSizeMake(120, 120), CGAffineTransformMakeTranslation(0, 50))
            
            }, completion: {_ in
                
                print("Transitions : finished")
                //            animView.transform = CGAffineTransformIdentity
                
        })
    }
    
    // MARK: Day 73 - Animation with CGRectApplyAffineTransform
    func day73() {
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = view.center
        animView.backgroundColor = UIColor.blueColor()
        view.addSubview(animView)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: .CurveEaseOut, animations: {
            
            animView.frame = CGRectApplyAffineTransform(CGRectMake(0, 0, 40, 40), CGAffineTransformMakeTranslation(0, 50))
            
            }, completion: {_ in
                
                print("Transitions : finished")
                //            animView.transform = CGAffineTransformIdentity
                
        })

    }
    
    // MARK: Day 72 - Evaluating Affine Transforms : CGAffineTransformIsIdentity
    func day72() {
        let animView = UIView(frame: CGRectMake(0,0,80,80))
        animView.center = view.center
        animView.backgroundColor = UIColor.blueColor()
        view.addSubview(animView)
        
        // Try to delete comment this line for see a different result
//        animView.transform = CGAffineTransformMakeScale(1.5, 1.5)
        
        // Checks whether an affine transform is the identity transform.
        if (CGAffineTransformIsIdentity(animView.transform)) {
            print("YES")
            animView.transform = CGAffineTransformMakeScale(1.5, 1.5)
        } else {
            print("NO")
            animView.transform = CGAffineTransformIdentity;
        }
    }
    
    // MARK: Day 71 - Evaluating Affine Transforms : CGAffineTransformEqualToTransform
    func day71() {
        let viewOne = UIView(frame: CGRectMake(0,0,80,80))
        viewOne.backgroundColor = UIColor.blueColor()
        view.addSubview(viewOne)
        
        let viewTwo = UIView(frame: CGRectMake(100,0,80,80))
        viewTwo.backgroundColor = UIColor.redColor()
        view.addSubview(viewTwo)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: .CurveEaseOut, animations: {
            
            // Try to to change 50 to other value for see a differnet result
            viewOne.transform = CGAffineTransformMakeTranslation(0, 50)
            viewTwo.transform = CGAffineTransformMakeTranslation(0, 50)
            
            }, completion: {_ in
                
                print("Transitions : finished")
                
        })
        
        // Checks whether two affine transforms are equal.
        if (CGAffineTransformEqualToTransform(viewOne.transform, viewTwo.transform)) {
            print("Equal")
        } else {
            print("Not Equal")
        }
        
    }
    
    // MARK: Day 67 - Control Flow : Loops
    func day67() {
        // For Loops
        // for-in
        for index in 1...10 {
            print("index : \(index)")
        }
        
        let students = ["Peter", "James", "Steve"]
        for var index = 0; index < students.count; index++ {
            print("student : \(students[index])")
        }
        
        // While Loops
        var index = 0
        while index <= 10 {
            print("while : \(index)")
            index = index + 1
        }
        
        // Repeat Loops
        index = 0
        repeat {
            print("repeat : \(index)")
            index = index + 1
        } while index < 10
        
    }
    
}

