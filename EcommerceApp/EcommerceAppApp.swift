//
//  EcommerceAppApp.swift
//  EcommerceApp
//
//  Created by Vakhtang on 24.03.2024.
//

import SwiftUI
import Firebase

@main
struct EcommerceAppApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Configured Firebase!")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
