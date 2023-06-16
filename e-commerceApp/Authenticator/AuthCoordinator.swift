//
//  AuthCoordinator.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToMainAuthPage()
    }
    
    // MARK: - SetUp navigate to main auth page
    func goToMainAuthPage() {
        let vc = MainAuthPageViewController()
        let viewModel = MainAuthViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
    }
    
    // MARK: - SetUp navigate to LogIn page
    func goToLogInPage() {
        let vc = SignInViewController()
        let viewModel = SignInViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
    }
    
    // MARK: - SetUp navigate to SignUp page
    func goToSignUpPage() {
        let vc = SignUpViewController()
        let viewModel = SignUpViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
    }
    
}
