//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Aditya Ambekar on 22/07/2019.
//  Copyright © 2020 Radioactive Apps. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                  
                if let errorInAuth = error {
                    
//                    self.view.showToa
//                    let alert = UIAlertController(title: "Failed!", message: "", preferredStyle: <#T##UIAlertController.Style#>)
                    print(errorInAuth.localizedDescription)
                }
                else {
                    
                    //Navigate to the chatViewController
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
            
        }
    }
    
}
