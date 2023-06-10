//
//  Coordinator.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    
    var parentCoordinator: Coordinator? {get set}
    var children: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}

extension Coordinator {
    func popController() {
        navigationController.popViewController(animated: true)
    }
}
