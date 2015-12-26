//
//  Day25_TypeAlias.swift
//  swift101
//
//  Created by Anak Mirasing on 12/25/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit
import AFNetworking

class Day25_TypeAlias: NSObject {

    let manager = AFHTTPRequestOperationManager()
    
    // Day 25 - Type Alias
    typealias PostResponse = (NSDictionary?, NSError?, Bool) -> Void
    
    func postToEndpoint(endpoint: String, parameters: NSDictionary, onCompletion: PostResponse) -> Void {
        
        manager.POST(endpoint, parameters: parameters, success: { (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) -> Void in
            
            let responseDict = responseObject as! NSDictionary
            onCompletion(responseDict, nil, true)
            
            }) { (operation: AFHTTPRequestOperation?, error: NSError) -> Void in
                
                onCompletion(nil, error, false)
        }
        
    }

    
    // Day 24 - Didset : Stored Variable Observers and Property Observers
    var propertyChangedListener : (Int, Int) -> Void = {
        print("The value of myProperty has changed from \($0) to \($1)")
    }
    
    var myProperty : Int = 0 {
        didSet { propertyChangedListener(oldValue, self.myProperty) }
    }
    
}
