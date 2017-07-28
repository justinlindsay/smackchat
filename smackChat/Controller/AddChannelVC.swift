//
//  AddChannelVC.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/27/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setUpView()
        
    }
    
    func setUpView() {
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
        
        chanDesc.attributedPlaceholder = NSAttributedString(string: "Description", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
    
    dismiss(animated: true, completion: nil)
    
    }

    @IBAction func createChannelPressed(_ sender: Any) {
        
        guard let channelName = nameTxt.text , nameTxt.text != "" else { return }
        guard let channelDesc = chanDesc.text else { return }
        
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            
            if success {
                
                self.dismiss(animated: true, completion: nil)
                
            }
        }
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }

    
}
