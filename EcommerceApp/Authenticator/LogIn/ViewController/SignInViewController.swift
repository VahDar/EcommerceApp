//
//  SignInViewController.swift
//  EcommerceApp
//
//  Created by Vakhtang on 03.06.2023.
//

import UIKit

class SignInViewController: UIViewController {

    let uiSignIn = UIViewSignIn()
    var viewModel: SignInViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSignIn.signInVC = self
        uiSignIn.signInUi()
        logInPressedButton()
    }
    
    func logInPressedButton() {
        uiSignIn.logInButton.addTarget(self, action: #selector(logInPressed), for: .touchUpInside)
    }
    
    @objc func logInPressed() {
        let singInManager = SignInManager()
        
        guard let email = uiSignIn.emailTextField.text, let password = uiSignIn.passwordTextField.text else {return}
        
        singInManager.signIn(email: email, password: password) { [weak self] success, error in
            guard let self = self else {return}
            
            var message: String = ""
            if success {
                message = "User was successfully logged in."
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
            } else {
                message = "There was an error"
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
            }
            
        }
    }

}
