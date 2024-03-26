//
//  SignInEmailView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import SwiftUI

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        VStack{
            TextField("Enter Email", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            TextField("Enter Password", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        SignInEmailView()
    }
}
