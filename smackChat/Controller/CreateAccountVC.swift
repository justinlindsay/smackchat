//
//  CreateAccountVC.swift
//  smackChat
//
//  Created by Justin Lindsay on 7/26/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createAccntPressed(_ sender: Any) {
        
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        
        guard let pass = passwordTxt.text , passwordTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            
            if success {
                
                print("registered user")
                
            }
        }
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
   
}
