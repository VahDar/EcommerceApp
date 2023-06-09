//
//  SingUpAuthManager.swift
//  EcommerceApp
//
//  Created by Vakhtang on 06.06.2023.
//

import Foundation
import FirebaseAuth

class SignUpAuthManager {
    
    func createUser(email: String, password: String, complition: @escaping (_ success: Bool) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if let user = authResult?.user {
                print(user.uid)
                complition(true)
            } else {
                print(error!)
                complition(false)
            }
        }
    }
}
