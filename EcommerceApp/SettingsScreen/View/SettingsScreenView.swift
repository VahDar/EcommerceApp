//
//  SettingsScreenView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 28.03.2024.
//

import SwiftUI

struct SettingsScreenView: View {
    
    @StateObject private var viewModel = SettingsScreenViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        List {
            Button("Sign Out") {
                Task {
                    do {
                        try viewModel.logOut()
                        showSignInView = true
                    } catch {
                        print(error)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SettingsScreenView(showSignInView: .constant(false))
    }
}
