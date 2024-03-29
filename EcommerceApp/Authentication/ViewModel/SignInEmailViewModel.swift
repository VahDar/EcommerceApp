//
//  SignInEmailViewModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import Foundation
import FirebaseAuth

@MainActor
final class SignInEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signUp()  async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        try await AuthanticationManager.shared.createUser(email: email, password: password)
    }
    
    func signIn()  async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        try await AuthanticationManager.shared.signInUser(email: email, password: password)
    }
}
