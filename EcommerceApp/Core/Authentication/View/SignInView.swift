//
//  SignInView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack {
                    Text("Ecommerce App")
                        .font(.largeTitle.bold())
                    Text("Some text about this shop")
                    
                    HStack {
                        Spacer()
                        Image("example")
                            .resizable()
                            .frame(width: 200, height: 160)
                        Spacer()
                    }
                }
                
                VStack(spacing: 24) {
                    InputView(text: $email,
                              title: "Email Adress",
                              placeholder: "Enter your email")
                        .textInputAutocapitalization(.never)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                        .textInputAutocapitalization(.never)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                Button(action: {
                    Task {
                       try await viewModel.signIn(withEmail: email, password: password)
                    }
                }, label: {
                    Text("Sign In With Email")
                        .fontWeight(.semibold)
                })
                .foregroundStyle(Color.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                .background(Color.blue)
                .clipShape(.rect(cornerRadius: 10))
                .padding(.top, 8)
                Spacer()
                
                NavigationLink {
                    RegistrationView()
                        .environmentObject(viewModel)
                } label: {
                    Text("Don't have an account? ")
                        + Text("Sign up")
                            .fontWeight(.bold)
                }
                .font(.system(size: 16))
            }
        }
    }
}

#Preview {
    NavigationStack {
        SignInView()
    }
}
