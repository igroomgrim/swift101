//
//  Day49_snapkit_part3.swift
//  swift101
//
//  Created by Anak Mirasing on 11/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit
import SnapKit

class Day49ViewController: UIViewController {
    
    override func viewDidLoad() {
        setupView()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.viewDidDisappear(animated)
    }
    
    // MARK: Day49 - SnapKit : Inset, Offset
    func setupView() {
        let blueView = UIView()
        let redView = UIView()
        
        blueView.backgroundColor = UIColor.blueColor()
        redView.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(blueView)
        self.view.addSubview(redView)
        
        blueView.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(120)
            make.height.equalTo(120)
            make.center.equalTo(self.view)
        }
        
        redView.snp_makeConstraints { (make) -> Void in
            // Inset
            make.edges.equalTo(blueView).inset(UIEdgeInsetsMake(20, 20, 20, 20))
            
            // Offset
            // make.edges.equalTo(blueView).offset(UIEdgeInsetsMake(20, 20, 20, 20))
            
            // func UIEdgeInsetsMake(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> UIEdgeInsets
        }
        
    }

}
