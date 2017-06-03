//
//  UserDefaultsManager.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/3/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class UserDefaultsManager {
    
    static func get<T>(key :String) -> T? {
        
        let defaults = UserDefaults.standard
        return defaults.value(forKey: key) as? T
    }
    
    static func set(key: String, object:Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(object, forKey: key)
        defaults.synchronize()
    }
    
}
