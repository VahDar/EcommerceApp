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
    
    @State private var showAlert = false
    @State private var tempEmail = ""
    var body: some View {
        List {
            Button("Sign out") {
                Task {
                    do {
                        try viewModel.logOut()
                        showSignInView = true
                    } catch {
                        print(error)
                    }
                }
            }
            
            Button("Reset password") {
                Task {
                    do {
                        try await viewModel.resetPassword()
                        print("Passwotd reset!")                    } catch {
                        print(error)
                    }
                }
            }
            
            Button("Update email") {
                self.showAlert = true
            }
        }
        .alert("Update Email", isPresented: $showAlert) {
                   TextField("Email", text: $tempEmail)
                   Button("Cancel", role: .cancel) { }
                   Button("Update") {
                       Task {
                           do {
                               try await viewModel.updateEmail(email: tempEmail)
                               print("Email updated")
                           } catch {
                               print(error)
                           }
                       }
                   }
               } message: {
                   Text("Please enter your new email address.")
               }
    }
}



#Preview {
    NavigationStack {
        SettingsScreenView(showSignInView: .constant(false))
    }
}
