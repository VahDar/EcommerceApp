//
//  SettingsScreenViewModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 28.03.2024.
//

import Foundation

@MainActor
final class SettingsScreenViewModel: ObservableObject {
    
    
    
    func logOut() throws {
       try AuthanticationManager.shared.signOut()
    }
    
    func resetPassword() async throws {
        let authUser = try AuthanticationManager.shared.getAuthUser()
        
        guard let email = authUser.email else {
            throw URLError(.fileDoesNotExist)
        }
        
        try await AuthanticationManager.shared.resetPassword(email: email)
    }
    
    func updateEmail(email: String) async throws {
        
        try await AuthanticationManager.shared.updateEmail(email: email)
    }
}
