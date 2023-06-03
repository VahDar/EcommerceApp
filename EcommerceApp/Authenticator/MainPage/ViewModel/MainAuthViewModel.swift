//
//  MainAuthViewModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
//

import Foundation

class MainAuthViewModel {
    
    weak var coordinator: AuthCoordinator?
    
    func goToSignUp() {
        coordinator?.goToSignUpPage()
    }
}
