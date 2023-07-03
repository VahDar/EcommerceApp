//
//  SifnInViewController.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import UIKit
import GoogleSignIn
import GoogleSignInSwift


class SignInViewController: UIViewController {

    let uiSignIn = UIViewSignIn()
    var viewModel: SignInViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSignIn.signInVC = self
        uiSignIn.signInUi()
        logInPressedButton()
        googleSignInButton()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
//    func signInWithFacebook() {
//        uiSignIn.facebookButton.addTarget(self, action: #selector(faceBookSignInPressed), for: .touchUpInside)
//    }
//
//    @objc func faceBookSignInPressed() {
//        if let token = AccessToken.current,
//                !token.isExpired {
//                // User is logged in, do work such as go to next view controller.
//            }
//        uiSignIn.facebookButton.permissions = ["public_profile", "email"]
//    }
    
    // Google button pressed
    func googleSignInButton() {
        uiSignIn.googleButton.addTarget(viewModel, action: #selector(viewModel.googleSignInPressed), for: .touchUpInside)
    }
    
    // Login button pressed
    func logInPressedButton() {
        uiSignIn.logInButton.addTarget(self, action: #selector(logInPressed), for: .touchUpInside)
    }
    
    @objc func logInPressed() {
        let singInVMEmailAndPass = SignInViewModel()
        
        guard let email = uiSignIn.emailTextField.text, let password = uiSignIn.passwordTextField.text else {return}
        
        singInVMEmailAndPass.signIn(email: email, password: password) { [weak self] success, error in
            guard let self = self else {return}
            
            var message = success ? "User was successfully logged in." : "There was an error"
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "Ok", style: .default) {
                [weak self] _ in
                guard let self = self else {return}
                self.viewModel.coordinator?.goToMainPage()
            }
            
            let cancelAlert = UIAlertAction(title: "Cancel", style: .cancel)
            let action = success ? actionOk : cancelAlert
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        }
    }

}



