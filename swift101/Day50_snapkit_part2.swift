//
//  Day50_snapkit_part2.swift
//  swift101
//
//  Created by Anak Mirasing on 11/27/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit
import SnapKit

class Day50ViewController: UIViewController {
    
    override func viewDidLoad() {
        loginViewSetup()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.viewDidDisappear(animated)
    }
    
    // MARK: Day50 - SnapKit : Create Login View
    let LeftOffset = 30.0
    let RightOffset = 30.0

    func loginViewSetup() {
        let logoImageView = UIImageView(image: UIImage(named: "day62"))
        let usernameTF = UITextField()
        let passwordTF = UITextField()
        let loginButton = UIButton()
        
        // usernameTF
        usernameTF.borderStyle = UITextBorderStyle.RoundedRect
        usernameTF.backgroundColor = UIColor.grayColor()
        usernameTF.placeholder = "Username"
        usernameTF.textAlignment = NSTextAlignment.Center
        
        // usernameTF
        passwordTF.borderStyle = UITextBorderStyle.RoundedRect
        passwordTF.backgroundColor = UIColor.grayColor()
        passwordTF.placeholder = "Password"
        passwordTF.textAlignment = NSTextAlignment.Center
        passwordTF.secureTextEntry = true
        
        // loginButton
        loginButton.backgroundColor = UIColor.brownColor()
        loginButton.setTitle("Login", forState: UIControlState.Normal)
        
        // Add subview
        self.view.addSubview(logoImageView)
        self.view.addSubview(usernameTF)
        self.view.addSubview(passwordTF)
        self.view.addSubview(loginButton)
        
        // Autolayout
        logoImageView.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(LeftOffset)
            make.top.equalTo(self.view).offset(40)
            make.right.equalTo(self.view).offset(-RightOffset)
            make.height.equalTo(self.view.frame.size.width/2.5)
        }
        
        usernameTF.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(logoImageView)
            make.height.equalTo(44)
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(logoImageView).inset(UIEdgeInsets(top: 0, left: 0, bottom: -(44+15), right: 0))
        }
        
        passwordTF.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(usernameTF)
            make.height.equalTo(44)
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(usernameTF).inset(UIEdgeInsets(top: 0, left: 0, bottom: -(44+15), right: 0))
        }
        
        loginButton.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(passwordTF)
            make.height.equalTo(44)
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(passwordTF).inset(UIEdgeInsets(top: 0, left: 0, bottom: -(44+15), right: 0))
        }
    
    }
}