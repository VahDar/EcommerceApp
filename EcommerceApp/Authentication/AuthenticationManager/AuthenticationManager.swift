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
    
    func getAuthUser() throws -> AuthDataModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        return AuthDataModel(user: user)
    }
    
    @discardableResult
    func createUser(email: String, password: String) async throws -> AuthDataModel {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataModel(user: authDataResult.user)
    }
    
    @discardableResult
    func signInUser(email: String, password: String) async throws -> AuthDataModel {
        let authDataResault = try await Auth.auth().signIn(withEmail: email, password: password)
        return AuthDataModel(user: authDataResault.user)
    }
    
    func resetPassword(email: String) async throws {
       try await Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    func signOut() throws {
       try Auth.auth().signOut()
    }
}
