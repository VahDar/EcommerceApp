//
//  MainAuthViewModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation

class MainAuthViewModel {
    
    weak var coordinator: AuthCoordinator?
    
    //SignUp button
    func goToSignUp() {
        coordinator?.goToSignUpPage()
    }
    
    //SignIn button
    func goToSignIn() {
        coordinator?.goToLogInPage()
    }
}
