//
//  SignUpViewModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import UIKit

class SignUpViewModel {
    
    weak var coordinator: AuthCoordinator?
    let uiView = UIViewSignUp()
    
    func registerUser() {
      
        coordinator?.goToLogInPage()
        
    }
    
}
