//
//  SceneDelegate.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var appCoordinator: AppCoordinator?
    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let navController = UINavigationController()
        appCoordinator = AppCoordinator.init(navigationController: navController)
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navController
        appCoordinator?.start()
        window?.makeKeyAndVisible()
    }
}

