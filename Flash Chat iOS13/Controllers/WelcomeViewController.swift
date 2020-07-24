//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Aditya Ambekar on 22/07/2019.
//  Copyright © 2020 Radioactive Apps. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    //to add animation
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = K.appName
        
       
    }
    

}
