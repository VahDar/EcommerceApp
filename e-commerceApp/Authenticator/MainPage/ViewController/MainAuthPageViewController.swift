//
//  MainAuthPageViewController.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import UIKit

class MainAuthPageViewController: UIViewController {

    let viewSetUp = ViewSetUp()
    var viewModel: MainAuthViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetUp.mainAuth = self
        viewSetUp.setUp()
        signUpPressed()
        logInPressed()
    }
    
    //SignUp button pressed
    func signUpPressed() {
        viewSetUp.signUpButton.addTarget(self, action: #selector(signUpButton), for: .touchUpInside)
    }
    
    @objc func signUpButton() {
        viewModel.goToSignUp()
    }
    
    //LogIn button pressed
    func logInPressed() {
        viewSetUp.logInButton.addTarget(self, action: #selector(logInButton), for: .touchUpInside)
    }
    
    @objc func logInButton() {
        viewModel.goToSignIn()
    }
    

    

}
