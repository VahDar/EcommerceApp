//
//  MainPageCoordinator.swift
//  e-commerceApp
//
//  Created by Vakhtang on 16.06.2023.
//

import Foundation
import UIKit

class MainPageCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToMainPage()
    }
    
    func goToMainPage() {
        let vc = MainPageViewController()
        let viewModel = MainPageViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: false)
    }
    
    func logOut() {
        
        let appCoordinator = AppCoordinator(navigationController: navigationController)
        appCoordinator.parentCoordinator = self
        children.append(appCoordinator)
        appCoordinator.start()
       
    }
    
}
