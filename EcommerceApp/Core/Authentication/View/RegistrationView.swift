//
//  RegistrationView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 30.03.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("example")
                    .resizable()
                    .frame(width: 200, height: 160)
                Spacer()
            }
            
            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Email Adress",
                          placeholder: "Enter your email")
                    .textInputAutocapitalization(.never)
                
                InputView(text: $fullName,
                          title: "Full Name",
                          placeholder: "Enter your full name")
                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                    .textInputAutocapitalization(.never)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
                    .textInputAutocapitalization(.never)
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            Button(action: {
                Task {
                    try await viewModel.createUser(withEmaeil: email,
                                                   password: password,
                                                   fullName: fullName)
                }
            }, label: {
                Text("Sign Up With Email")
                    .fontWeight(.semibold)
            })
            .foregroundStyle(Color.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .background(Color.blue)
            .clipShape(.rect(cornerRadius: 10))
            .padding(.top, 8)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                Text("Already have an account? ")
                    + Text("Sign in")
                        .fontWeight(.bold)
            }
            .font(.system(size: 16))
        }
    }
}

#Preview {
    RegistrationView()
}
