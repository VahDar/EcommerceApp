//
//  AuthViewModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 31.03.2024.
//

import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: UserModel?
    
    init() {
        
    }
    
    func signIn(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmaeil email: String, password: String, fullName: String) async throws {
        
    }
    
    func signOut() {
        
    }
    
    func deleteAccount() {
        
    }
    
    func fetchUser() async {
        
    }
}
