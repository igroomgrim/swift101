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
    }
    
    private func setKeychain(sessionToken: String, sessionAccount: String) {
        SSKeychain.setPassword(sessionToken, forService: ServiceName, account: sessionAccount)
    }
    
    private func getAccountFromService() -> NSArray {
        return SSKeychain.accountsForService(ServiceName)
    }
}
