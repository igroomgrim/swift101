//
//  Day32_AFNetworking.swift
//  swift101
//
//  Created by Anak Mirasing on 12/17/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit
import AFNetworking

class Day32_AFNetworking: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let manager = AFHTTPRequestOperationManager()
    typealias ServiceResponse = (NSDictionary?, NSError?) -> Void
    
    // Day 32 - AFNetworking : POST Method
    func postToEndpoint(endpoint: String, parameters: NSDictionary, onCompletion: ServiceResponse) -> Void {
        
        manager.POST(endpoint, parameters: parameters, success: { (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) -> Void in
            
            let responseDict = responseObject as! NSDictionary
            onCompletion(responseDict,nil)
            
        }) { (operation: AFHTTPRequestOperation?, error: NSError) -> Void in

            onCompletion(nil,error)
        }
        
    }
    
    // Day 31 - AFNetworking : GET Method
    func getFromEndpoint(endpoint: String, parameters: NSDictionary, onCompletion: ServiceResponse) -> Void {
        manager.GET(endpoint, parameters: parameters, success: { (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) -> Void in
            
            let responseDict = responseObject as! NSDictionary
            onCompletion(responseDict,nil)
            
        }) { (operation: AFHTTPRequestOperation?, error: NSError) -> Void in
                
            onCompletion(nil,error)
        }
    }

}
