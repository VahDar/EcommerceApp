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
        uiView.singInVC = self
        uiView.setUpUI()
    }

}
