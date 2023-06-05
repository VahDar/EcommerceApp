//
//  AuthService.swift
//  EcommerceApp
//
//  Created by Vakhtang on 05.06.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    public static let shared = AuthService()
    private init() {}
    
    
    /// A method to register the user
    /// - Parameters:
    ///   - userRequest: The user information (email, password, username)
    ///   - complition: A complition with two values...
    ///   - Boll: wasRegistered - Datermines if the user was registered and saved in the database correctly
    ///   - Error? : An optional error if firebase provides once
    func registerUser(with userRequest: ModelSignUp, complition: @escaping (Bool, Error?) -> Void) {
        
        let username = userRequest.username
        let email = userRequest.email
        let password = userRequest.password
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                complition(false, error)
                return
            }
            
            guard let resultUser = result?.user else {
                complition(false, nil)
                return
            }
            let db = Firestore.firestore()
            
            db.collection("users")
                .document(resultUser.uid)
                .setData([
                    "username": username,
                    "email": email
                ]) { error in
                    if let error = error {
                        complition(false, error)
                        return
                    }
                    complition(true, nil)
                }
        }
    }
}
