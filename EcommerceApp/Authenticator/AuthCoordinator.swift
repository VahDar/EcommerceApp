//
//  AuthCoordinator.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
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
    
    func goToMainAuthPage() {
        let vc = MainAuthPageViewController()
        navigationController.pushViewController(vc, animated: true)
    }
    
}
