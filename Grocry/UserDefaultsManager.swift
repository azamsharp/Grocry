//
//  UserDefaultsManager.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/3/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

enum Key :String {
    case userId = "userId"
}

class UserDefaultsManager {
    
    static func get<T>(key :Key) -> T? {
        
        let defaults = UserDefaults.standard
        return defaults.value(forKey: key.rawValue) as? T
    }
    
    static func set<T>(key: String, object:T) {
        
        let defaults = UserDefaults.standard
        defaults.set(object, forKey: key)
        defaults.synchronize()
    }
    
}
