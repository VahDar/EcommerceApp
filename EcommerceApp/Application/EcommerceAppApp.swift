//
//  EcommerceAppApp.swift
//  EcommerceApp
//
//  Created by Vakhtang on 24.03.2024.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

@main
struct EcommerceAppApp: App {
    @StateObject var viewModel = AuthViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    init() {
        let providerFactory = AppCheckDebugProviderFactory()
        AppCheck.setAppCheckProviderFactory(providerFactory)

        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .environmentObject(viewModel)
            }
        }
    }
}

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Установка переменной среды для отображения трассировки ошибок CoreGraphics
        setenv("CG_NUMERICS_SHOW_BACKTRACE", "1", 1)
        
        return true
    }
}
