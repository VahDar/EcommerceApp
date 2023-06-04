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
    }
    

}
