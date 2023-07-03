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
    
    func childDidFinish(_ coordinator: Coordinator) {
        //Call this if a coordinator is done.
        for (index, child) in children.enumerated() {
            if child === coordinator {
                children.remove(at: index)
                break
            }
        }
    }
}
