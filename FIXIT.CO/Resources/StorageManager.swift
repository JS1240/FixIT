//
//  StorageManager.swift
//  FIXIT.CO
//
//  Created by Jure Šunić on 11/03/2021.
//
//  Whenever the user uploads a picture or something we need to store it on cloud

import FirebaseStorage

public class StorageManager {
    
    static let shared = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    // public functions/IPs
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: (Result<URL, Error>) -> Void) {
                                        
    }
    
    public func downloadImage(with reference: String, completion: (Result<URL, Error>) -> Void) {
        
    }
}

public enum UserPostType {
    case photo,video
}

public struct UserPost {
    let postType: UserPostType
}
