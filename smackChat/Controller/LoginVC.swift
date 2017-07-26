//
//  LoginVC.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/25/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closePressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func createAccntBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
        
    }
}
