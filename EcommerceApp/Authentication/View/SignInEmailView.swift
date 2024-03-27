//
//  SignInEmailView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import SwiftUI

struct SignInEmailView: View {
    private let authManager = AuthenticationManager()
    @StateObject private var viewModel = SignInEmailViewModel(authManager: )
    
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
            
            Button("Sign in") {
                
            }
            .foregroundStyle(.white)
            .frame(width: 200, height: 50)
            .background(Color.black)
            .clipShape(Capsule())
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        SignInEmailView()
    }
}
