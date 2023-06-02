//
//  AppCoordinator.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator]
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        <#code#>
    }
    
    
}
