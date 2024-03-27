//
//  AuthanticationManager.swift
//  EcommerceApp
//
//  Created by Vakhtang on 27.03.2024.
//

import Foundation
import FirebaseAuth

final class AuthanticationManager {
    
    static let shared = AuthanticationManager()
    private init() {}
    
    func createUser(email: String, password: String) async throws -> AuthDataModel {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataModel(user: authDataResult.user)
    }
}
