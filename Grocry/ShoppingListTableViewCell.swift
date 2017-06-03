//
//  ShoppingListTableViewCell.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/1/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class ShoppingListTableViewCell : UITableViewCell {
    
    lazy var countView :CountView = {
       
        let view = CountView(frame: CGRect.zero)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.width(50)
            .height(50)
            .marginRight(to :self, value: -20)
            .centerY(inView : self).apply()
        
        return view
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

