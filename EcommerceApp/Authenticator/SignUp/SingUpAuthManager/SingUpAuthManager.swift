//
//  SingUpAuthManager.swift
//  EcommerceApp
//
//  Created by Vakhtang on 06.06.2023.
//

import Foundation
import FirebaseAuth

class SingUpAuthManager {
    
    func createUser(email: String, password: String, complition: @escaping (_ success: Bool) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if let user = authResult?.user {
                print(user)
                complition(true)
            } else {
                print(error!)
                complition(false)
            }
        }
    }
}
