//
//  LogInViewController.swift
//  FixIT
//
//  Created by Jure Šunić on 30/03/2022.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hides the back button 
        navigationItem.hidesBackButton = true
    }
    
    
    // Lo In button is pressed and it checks for the users in the database with the email and password auth
    @IBAction func logInPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if error != nil {
                    self.errorLabel.text = "Email or password is incorrect!"
                } else {
                    // Navigate to the main menu
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                    }
            }
        }
    }
}
