//
//  MainAuthPageViewController.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
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
    
    func signUpPressed() {
        viewSetUp.signUpButton.addTarget(self, action: #selector(signUpButton), for: .touchUpInside)
    }
    
    @objc func signUpButton() {
        viewModel.goToSignUp()
    }
    
    func logInPressed() {
        viewSetUp.logInButton.addTarget(self, action: #selector(logInButton), for: .touchUpInside)
    }
    
    @objc func logInButton() {
        viewModel.goToSignIn()
    }
    

    

}
