//
//  RoundedButton.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/27/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    // Variables
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        
        didSet {
            
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    // Functions
    
    override func awakeFromNib() {
        
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        
        super.prepareForInterfaceBuilder()
        self.setUpView()
        
    }
    
    func setUpView() {
        
        self.layer.cornerRadius = cornerRadius
    
    }
}
