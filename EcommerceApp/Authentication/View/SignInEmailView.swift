//
//  SignInEmailView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import SwiftUI

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    @Binding var showSignInView: Bool
    var authMode: AuthMode
    
    
    var body: some View {
        VStack{
            TextField("Enter Email", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            SecureField("Enter Password", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            if authMode == .signIn {
                Button("Sign In with Email") {
                    Task {
                        do {
                            try await viewModel.signIn()
                            showSignInView = false
                            print("success")
                        } catch {
                            print(error)
                            print("Fail")
                        }
                    }
                }
                .foregroundStyle(.white)
                .frame(width: 200, height: 50)
                .background(Color.black)
                .clipShape(Capsule())
            } else {
                Button("Sign Up with Email") {
                    Task {
                        do {
                            try await viewModel.signUp()
                            showSignInView = false
                            print("success")
                        } catch {
                            print(error)
                            print("Fail")
                        }
                    }
                }
                .foregroundStyle(.white)
                .frame(width: 200, height: 50)
                .background(Color.black)
                .clipShape(Capsule())
            }
        }
        .padding()
        
        
    }
}

#Preview {
    NavigationStack {
        SignInEmailView(showSignInView: .constant(false), authMode: .signIn)
    }
}
