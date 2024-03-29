//
//  AuthenticationView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import SwiftUI

struct AuthenticationView: View {
    
    @Binding var showSignInView: Bool
    
    var body: some View {
        VStack{
            VStack {
                Text("Ecommerce App")
                    .font(.largeTitle.bold())
                Text("Some text about this shop")
                Spacer()
            }
            
            HStack {
                Spacer()
                Image("example")
                    .resizable()
                    .frame(width: 250, height: 200)
                Spacer()
            }
            .offset(y: -250)
            
            NavigationLink {
                SignInEmailView(showSignInView: $showSignInView, authMode: .signIn)
            } label : {
                Text("Sign In")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .clipShape(Capsule())
            }
            
            NavigationLink {
                SignInEmailView(showSignInView: $showSignInView, authMode: .signUp)
            } label : {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .clipShape(Capsule())
            }
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        AuthenticationView(showSignInView: .constant(false))
    }
}
