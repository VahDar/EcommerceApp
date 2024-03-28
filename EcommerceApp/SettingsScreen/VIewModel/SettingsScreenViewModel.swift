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
}
