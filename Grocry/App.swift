//
//  App.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/3/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class App {
    
    static var UniqueUserId :String = {
        
        var userId :String? = UserDefaultsManager.get(key: Key.userId)
        
        if userId == nil {
            userId = UUID().uuidString
            UserDefaultsManager.set(key: Key.userId.rawValue, object: userId)
        }
        
        return userId!
    }()
    
}
