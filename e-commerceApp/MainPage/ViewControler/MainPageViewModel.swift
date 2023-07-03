//
//  MainPageViewModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 25.06.2023.
//

import Foundation
import FirebaseAuth

class MainPageViewModel {
    weak var coordinator: MainPageCoordinator?
    
    func logOutButton() {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            coordinator?.logOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
    }
}
