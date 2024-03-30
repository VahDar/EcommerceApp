//
//  SignInView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 26.03.2024.
//

import SwiftUI

struct SignInView: View {
    
    var body: some View {
        NavigationStack {
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
                        .frame(width: 200, height: 160)
                    Spacer()
                }
                .offset(y: -500)
            }
            
            
        }
    }
}

#Preview {
    NavigationStack {
        SignInView()
    }
}
