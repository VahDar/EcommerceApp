//
//  SettingsScreenView.swift
//  EcommerceApp
//
//  Created by Vakhtang on 28.03.2024.
//

import SwiftUI

struct SettingsScreenView: View {
    
    
    var body: some View {
        List {
            Section {
                HStack {
                    Text("VD")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 72, height: 72)
                        .foregroundStyle(Color.white)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Vah Dar")
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text("test@gmail.com")
                            .font(.footnote)
                            .tint(.secondary)
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingRowView(imageName: "gear",
                                   title: "Version",
                                   tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.footnote)
                        .foregroundStyle(Color(.systemGray))
                }
            }
            
            Section("Account") {
                Button {
                    print("Sign out")
                } label: {
                    SettingRowView(imageName: "arrow.left.circle.fill",
                                   title: "Sign Out",
                                   tintColor: .red)
                }
                
                Button {
                    print("account deleted")
                } label: {
                    SettingRowView(imageName: "xmark.circle.fill",
                                   title: "Delete Account",
                                   tintColor: .red)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SettingsScreenView()
    }
}
