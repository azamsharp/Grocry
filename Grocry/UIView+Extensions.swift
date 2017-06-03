//
//  UIView+Extensions.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/2/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func width(_ value :CGFloat) -> UIView {
        
        self.widthAnchor.constraint(equalToConstant: value).isActive = true
        return self
    }
    
    func height(_ value: CGFloat) -> UIView {
        self.heightAnchor.constraint(equalToConstant: value).isActive = true
        return self 
    }
    
    func marginRight(to referenceTo :UIView, value :CGFloat) -> UIView  {
        
        self.trailingAnchor.constraint(equalTo: referenceTo.trailingAnchor, constant: value).isActive = true
        return self
    }
    
    func centerX(inView parentView: UIView) -> UIView {
        
        self.centerXAnchor.constraint(equalTo: parentView.centerXAnchor).isActive = true
        return self
    }
    
    func centerY(inView parentView: UIView) -> UIView {
        
        self.centerYAnchor.constraint(equalTo: parentView.centerYAnchor).isActive = true
        return self
    }
    
    func apply() {
        
        self.layoutIfNeeded()
    }
    
    
}
