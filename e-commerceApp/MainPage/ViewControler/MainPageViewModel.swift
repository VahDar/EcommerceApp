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
        coordinator?.logOut()
        
    }
    
}
