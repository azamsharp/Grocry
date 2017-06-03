//
//  ShoppingList.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/1/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

struct ShoppingList {
    
    var title :String
}

extension ShoppingList {
    
    init?(dictionary :JSONDictionary) {
        
        guard let title = dictionary["title"] as? String else {
            return nil
        }
        
        self.title = title
    }
    
}

extension ShoppingList {
    
    static let all = Resource<[ShoppingList]>(url :App.ShoppingList.all.url) { data in
        
        let json = try? JSONSerialization.jsonObject(with: data, options: [])
        guard let dictionaries = json as? [JSONDictionary] else {
            return nil
        }
        return dictionaries.flatMap(ShoppingList.init)
    }
    
}
