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
        return view
    }()
    
    //var countView = CountView(frame: CGRect.zero)
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
      //  countView.text = "something"
        self.addSubview(countView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        countView.translatesAutoresizingMaskIntoConstraints = false
        
        countView.width(50)
            .height(50)
            .marginRight(to :self, value: -20)
            .centerY(inView : self).apply()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

