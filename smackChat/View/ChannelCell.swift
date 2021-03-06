//
//  ChannelCell.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/27/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    // Outlets
    
    @IBOutlet weak var channelName: UILabel!
    
    // Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
            
        } else {
            
            self.layer.backgroundColor = UIColor.clear.cgColor
            
        }
    }
    
    func configureCell(channel: Channel) {
        
        let title = channel.channelTitle ?? ""
        channelName.text = "#\(title)"
        
    }
    

}
