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
            Button("Register") {
                
            }
            .buttonBorderShape(.capsule)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
