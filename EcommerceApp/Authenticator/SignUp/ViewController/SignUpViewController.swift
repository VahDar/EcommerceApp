//
//  RegisterViewController.swift
//  EcommerceApp
//
//  Created by Vakhtang on 03.06.2023.
//

import UIKit

class SignUpViewController: UIViewController {

    let uiView = UIViewSignUp()
    var viewModel: SignUpViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView.singUpVC = self
        uiView.setUpUI()
        signUpCreateUser()
    }

    func signUpCreateUser() {
        uiView.signUpButton.addTarget(self, action: #selector(registerButton), for: .touchUpInside)
    }
    
    @objc func registerButton() {
//        viewModel?.registerUser()
        let signUpManager = SingUpAuthManager()
        if let email = uiView.mailTextField.text, let password = uiView.passwordTextField.text {
            signUpManager.createUser(email: email, password: password) {[weak self] (success) in
                guard let self = self else { return }
                var message = ""
                if (success) {
                    message = "User was sucessfully created."
                } else {
                    message = "There was an error."
                }
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel))
                present(alertController, animated: true)
                
                           
            }
        }
        
    }
    
}
