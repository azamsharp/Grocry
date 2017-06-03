//
//  AppDelegate.swift
//  Grocry
//
//  Created by Mohammad Azam on 5/31/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // generate a UUID and save it locally 
        
        
        ThemeManager.apply(theme: .standard)
              
        return true
    }

}

