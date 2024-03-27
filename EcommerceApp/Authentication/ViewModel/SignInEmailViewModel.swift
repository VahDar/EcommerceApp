//
//  SignInEmailViewModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import Foundation
import FirebaseAuth

final class SignInEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    private let authManager: AuthenticationManager
    
    init(authManager: AuthenticationManager) {
        self.authManager = authManager
    }
    
    func signIn() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        let returneduserData = try await authManager.createUser(email: email, password: password)
    }
}
