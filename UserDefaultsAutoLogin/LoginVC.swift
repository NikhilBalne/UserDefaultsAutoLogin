//
//  LoginVC.swift
//  UserDefaultsAutoLogin
//
//  Created by iHub on 19/11/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(homeVC, animated: false)
        }
        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        if userNameTextField.text == "test" && passwordTextField.text == "test" {
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
    }
}
