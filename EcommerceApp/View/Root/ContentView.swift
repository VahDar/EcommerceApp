//
//  ContentView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSighnInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsScreenView(showSignInView: $showSighnInView)
            }
        }
        .onAppear {
            let authUser = try? AuthanticationManager.shared.getAuthUser()
            self.showSighnInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSighnInView, content: {
            NavigationStack {
                AuthenticationView(showSignInView: $showSighnInView)
            }
        })
    }
}

#Preview {
    ContentView()
}
