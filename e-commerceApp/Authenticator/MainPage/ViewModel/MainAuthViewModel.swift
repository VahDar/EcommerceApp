//
//  MainAuthViewModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation

class MainAuthViewModel {
    
    weak var coordinator: AuthCoordinator?
    
    func goToSignUp() {
        coordinator?.goToSignUpPage()
    }
    
    func goToSignIn() {
        coordinator?.goToLogInPage()
    }
}
