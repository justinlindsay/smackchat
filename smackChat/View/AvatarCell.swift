//
//  AvatarCell.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/27/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    // Outlets
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        setUpView()
        
    }
    
    func setUpView() {
        
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
    }
}
