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
        
        // Day 101
        let day101 = Day101ReduceExtension()
        day101.showTotalIncome()
        day101.showTotalIncomeOldStyle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

