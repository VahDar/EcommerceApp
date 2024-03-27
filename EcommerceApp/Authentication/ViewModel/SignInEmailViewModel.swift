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
    
    func signIn()  {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let returneduserData = try await AuthanticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returneduserData)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}
