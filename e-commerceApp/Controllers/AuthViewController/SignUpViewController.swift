//
//  SignUpViewController.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let uiView = SignUpUIView()
    var viewModel: SignUpViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView.singUpVC = self
        uiView.setUpUI()
        signUpCreateUser()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    // MARK: - set up Register button
    
    func signUpCreateUser() {
        uiView.signUpButton.addTarget(self, action: #selector(registerButton), for: .touchUpInside)
    }
    
    @objc func registerButton() {
        
        let signUpManager = SignUpAuthManager()
        if let email = uiView.mailTextField.text, let password = uiView.passwordTextField.text {
            signUpManager.createUser(email: email, password: password) {[weak self] (success) in
                guard let self = self else { return }
                let message = success ? "User was successfully created." : "There was an error."
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default) { [weak self] (_) in
                    guard let self = self else { return }
                    self.viewModel?.registerUser()
                }
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                let action = success ? actionOk : cancelAction
                alertController.addAction(action)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
    }
    
}
