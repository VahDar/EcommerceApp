//
//  ContentView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 24.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Ecommerce App")
                    .font(.largeTitle.bold())
                Text("Some text about this shop")
                Spacer()
            }
            VStack{
                Button("Sign up") {
                    
                }
                .foregroundStyle(.white)
                .frame(width: 200, height: 50)
                .background(Color.black)
                .clipShape(Capsule())
                
                Button("Log in") {
                    
                }
                .foregroundStyle(.black)
                .frame(width: 200, height: 50)
                .overlay(
                    Capsule().stroke(lineWidth: 2)
                )
            }
            .offset(y: -150)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
