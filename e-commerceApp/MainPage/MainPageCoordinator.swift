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
        <#code#>
    }
    
    
    
}
