//
//  SignInViewController.swift
//  FixIT
//
//  Created by Jure Šunić on 30/03/2022.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            // Checks if the user has inputed email and password into the text field to continue
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            } else {
                // Navigate to the main menu
                self.performSegue(withIdentifier: "SignInToMainMenu", sender: self)
                }
            }
        }
    }
}

