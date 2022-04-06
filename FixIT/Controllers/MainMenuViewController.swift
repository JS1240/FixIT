//
//  MainMenuViewController.swift
//  FixIT
//
//  Created by Jure Šunić on 30/03/2022.
//

import UIKit
import Firebase

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hides the back button 
        navigationItem.hidesBackButton = true
    }

    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
        
    }
    
}

