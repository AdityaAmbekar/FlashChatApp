//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Aditya Ambekar on 22/07/2019.
//  Copyright © 2020 Radioactive Apps. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let errorInAuth = error {
                    
                    print(errorInAuth)
                }
                else {
                    
                    //Navigate to the chat
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
            
        }
        
    }
    
}
