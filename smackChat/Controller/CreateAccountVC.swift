//
//  CreateAccountVC.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/26/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
