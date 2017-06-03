//
//  CountView.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/2/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class CountView : UIView {
    
    lazy var label :UILabel = {
        let l = UILabel(frame: CGRect.zero)
        l.textColor = UIColor.white
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        
        self.addSubview(label)
    }
    
    override func layoutSubviews() {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.width(50)
            .height(20)
            .centerX(inView: self)
            .centerY(inView: self).apply()

    }
    
    override func draw(_ rect: CGRect) {
        
        UIColor.blue.setFill()
        let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 50, height: 50))
        path.fill()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
