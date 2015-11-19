//
//  AppDelegate.swift
//  swift101
//
//  Created by Anak Mirasing on 9/28/2558 BE.
//  Copyright © 2558 iGROOMGRiM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let ShortcutTypeAddItem = "AddItem"
    let ShortcutTypeShowSomethingItem = "ShowSomeThing"

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        // MARK: Day58 - 3D Touch Shortcut
        // If you minimum is under iOS9 please check version first because it support in iOS9 only
        if #available(iOS 9, *) {
            
            let showIcon = UIApplicationShortcutIcon(templateImageName: "showIcon")
            
            let shortcutAddItem = UIApplicationShortcutItem(type: ShortcutTypeAddItem, localizedTitle: "Add Item", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(type: .Add), userInfo: nil)
            let shortcutShowItem = UIApplicationShortcutItem(type: ShortcutTypeShowSomethingItem, localizedTitle: "Show ETC", localizedSubtitle: nil, icon: showIcon, userInfo: nil)
            
            UIApplication.sharedApplication().shortcutItems = [shortcutAddItem, shortcutShowItem]
        }
        
        return true
    }
    
    // MARK: Day58 - 3D Touch Shortcut delegate
    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        // Check you shortCutItem
        handleShortcutItem(shortcutItem)
    }
    
    func handleShortcutItem(shortcutItem: UIApplicationShortcutItem) {
        if shortcutItem.type == ShortcutTypeAddItem {
            // Go to where you want : Etc. ViewController ...
        } else if shortcutItem.type == ShortcutTypeShowSomethingItem {
            // Go to where you want : Etc. ViewController ...
        }
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

