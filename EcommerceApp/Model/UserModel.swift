//
//  AuthDataModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 27.03.2024.
//

import Foundation
import FirebaseAuth

struct UserModel: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension UserModel {
    static var MOCK_USER = UserModel(id: NSUUID().uuidString, fullName: "Steve Jobs", email: "test@gmail.com")
}
