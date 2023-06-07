//
//  SignInManager.swift
//  EcommerceApp
//
//  Created by Vakhtang on 07.06.2023.
//

import UIKit
import FirebaseAuth

class SignInManager {
   
    func signIn(email: String, password: String, completion: @escaping (_ success: Bool, _ error: Error?) -> Void) {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let error = error {
                    completion(false, error)
                } else {
                    completion(true, nil)
                }
            }
        }
}
