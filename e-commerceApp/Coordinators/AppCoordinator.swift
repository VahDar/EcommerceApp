//
//  AppCoordinator.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import FirebaseAuth
import UIKit

class AppCoordinator: Coordinator {
    
    weak var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("AppCoordinator start")
        if Auth.auth().currentUser == nil {
            goToAuth()
        } else {
            goToMainPage()
        }
    }
    
    func goToAuth() {
        
        let authCoordinator = AuthCoordinator.init(navigationController: navigationController)
        children.removeAll()
        
        authCoordinator.parentCoordinator = self
        children.append(authCoordinator)
        authCoordinator.start()
    }
    
    func goToMainPage() {
        let mainPageCoordinator = MainPageCoordinator(navigationController: navigationController)
        mainPageCoordinator.parentCoordinator = self
        children.append(mainPageCoordinator)
        mainPageCoordinator.start()
    }
    
    deinit {
        print("AppCoordinator deinit")
    }
}
