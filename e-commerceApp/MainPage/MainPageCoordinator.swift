//
//  MainPageCoordinator.swift
//  e-commerceApp
//
//  Created by Vakhtang on 16.06.2023.
//

import Foundation
import UIKit

class MainPageCoordinator: Coordinator {
    
    weak var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("MainPageCoordinator start")
        goToMainPage()
    }
    
    func goToMainPage() {
        let vc = MainPageViewController()
        let viewModel = MainPageViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.setViewControllers([vc], animated: false)
    }
    
    func goToModulePage() {
        let vc = AddModuleViewController()
        let viewModel = ModuleViewModel()
        viewModel.coordinator = self
        vc.viewModel = viewModel
        navigationController.setViewControllers([vc], animated: true)
    }
    
    
    func logOut() {
        
       
        
        let appCoordinator = AppCoordinator(navigationController: navigationController)
        appCoordinator.parentCoordinator = self
        children.append(appCoordinator)
        appCoordinator.goToAuth()
        
       
    }
    
    deinit {
        print("MainPageCoordinator deinit")
    }
    
}
