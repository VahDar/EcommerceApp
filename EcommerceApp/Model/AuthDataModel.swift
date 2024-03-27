//
//  AuthDataModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 27.03.2024.
//

import Foundation
import FirebaseAuth

struct AuthDataModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}
