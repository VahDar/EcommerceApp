//
//  ContentView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                SettingsScreenView()
            } else {
                SignInView()
            }
        }
    }
}

#Preview {
    ContentView()
}
