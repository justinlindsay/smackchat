//
//  CircleImage.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/27/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    
    // Functions
    
    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
        
    }
    
    override func prepareForInterfaceBuilder() {
        
        super.prepareForInterfaceBuilder()
        setUpView()
        
    }
}
