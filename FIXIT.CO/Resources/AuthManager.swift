//
//  AuthManager.swift
//  FIXIT.CO
//
//  Created by Jure Šunić on 11/03/2021.
//
//  Authenticates the user.

import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()
    
    // public functions/IPs
    // MARK: - Public
    
    public func registerNewUser(username: String, email: String, password: String, completion: @escaping (Bool) -> Void){
        /*
         - Check if username is available
         - Check if email is available
         - Create account
         - Insert account to database
         */
        
        DatabaseManager.shared.canCreateNewUser(with: email, username: username) { canCreate in
            if canCreate {
                /*
                 - Create account
                 - Insert account to database
                 */
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    guard error == nil, result != nil else {
                        // Firebase auth could not create account
                        completion(false)
                        return
                    }
                    // Insert into database
                    DatabaseManager.shared.insertNewUser(with: email, username: username) { inserted in
                        if inserted {
                            completion(true)
                            return
                        }
                        else {
                            // Failed to insert to database
                            completion(false)
                            return
                        }
                    }
                }
            }
            else {
                // Either username ot email does not exist
                completion(false)
            }
            
        }
    }
    // ? means optional/username or email
    // @escaping because we are using completion inside of another closure and as a result th escope needs to escape
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        if let email = email {
            // email log in
            Auth.auth().signIn(withEmail: email, password: password) { AuthResult, error in
                guard AuthResult != nil, error == nil else {
                    completion(false)
                    return
                }
                
                completion(true)
            }
            
        }
        else if let username = username {
            // username log in
            print(username)
        }
    }
    
    /// Attempt to log out firebase user 
    public func logOut(completion: (Bool) -> Void) {
        do {
            try Auth.auth().signOut()
            completion(true)
            return
        }
        catch {
            print(error)
            completion(false)
            return
        }
    }
}
