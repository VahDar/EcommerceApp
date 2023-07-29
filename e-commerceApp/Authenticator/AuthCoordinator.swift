//
//  AuthCoordinator.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("AuthCoordinator start")
        goToMainAuthPage()
    }
    
    // MARK: - SetUp navigate to main auth page
    func goToMainAuthPage() {
        // Instantiate ViewController
        let vc = MainAuthPageViewController()
        // Instantiate ViewModel
        let viewModel = MainAuthViewModel()
        // Set the coordinator to ViewModel
        viewModel.coordinator = self
        // Set the ViewModel to ViewController
        vc.viewModel = viewModel
        // Push it
        navigationController.setViewControllers([vc], animated: true)
    }
    
    // MARK: - SetUp navigate to LogIn page
    func goToLogInPage() {
        let vc = SignInViewController()
        let viewModel = SignInViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.setViewControllers([vc], animated: true)
    }
    
    // MARK: - SetUp navigate to SignUp page
    func goToSignUpPage() {
        let vc = SignUpViewController()
        let viewModel = SignUpViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.setViewControllers([vc], animated: true)
    }
    
    func goToMainPage() {
        let mainPageCoordinator = MainPageCoordinator(navigationController: navigationController)
        mainPageCoordinator.parentCoordinator = self
        children.append(mainPageCoordinator)
        mainPageCoordinator.start()
    }
    
    deinit {
        print("AuthCoordinator finish")
    }
}
