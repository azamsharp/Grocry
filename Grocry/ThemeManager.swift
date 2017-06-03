//
//  ThemeManager.swift
//  Grocry
//
//  Created by Mohammad Azam on 5/31/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

struct StandardTheme {
    
    static func apply() {
       
        UINavigationBar.appearance().barTintColor = UIColor.colorForNavigationBar()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
    }
}

enum Theme {
    case standard
}

class ThemeManager {
    
    static func apply(theme: Theme) {
        
        switch theme {
            case .standard:
                StandardTheme.apply()
        }
        
    }
    
}
