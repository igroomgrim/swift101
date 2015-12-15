//
//  Day36_SSKeychain.swift
//  swift101
//
//  Created by Anak Mirasing on 12/13/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit
import SSKeychain

class Day36ViewController: UIViewController {
    
    let ServiceName = "Swift101"
    
    override func viewDidLoad() {
        let sessionToken = "AABBCCDDEEFF"
        let sessionAccount = "user@email.com"
        
        self.setKeychain(sessionToken, sessionAccount: sessionAccount)
        
        print(SSKeychain.allAccounts())
    }
    
    override func viewDidAppear(animated: Bool) {
        self.viewDidDisappear(animated)
        
        let accounts = self.getAccountFromService()
        print(accounts)
        
        let accountDict = accounts[0] as! NSDictionary
        let account = accountDict["acct"] as! String
        
        let pwd = self.getPasswordFromAccount(account)
        
        print("password : \(pwd)")
        
    }
    
    private func setKeychain(sessionToken: String, sessionAccount: String) {
        SSKeychain.setPassword(sessionToken, forService: ServiceName, account: sessionAccount)
    }
    
    // Day 35 - Get accounts from your service
    private func getAccountFromService() -> NSArray {
        return SSKeychain.accountsForService(ServiceName)
    }
    
    // Day 34 - Get password from account
    private func getPasswordFromAccount(sessionAccount: String) -> String {
        return SSKeychain.passwordForService(ServiceName, account: sessionAccount)
    }
}
