//
//  SignInViewModel.swift
//  EcommerceApp
//
//  Created by Vakhtang on 03.06.2023.
//

import Foundation
import FirebaseCore
import GoogleSignIn
import FirebaseAuth


class SignInViewModel {
    
    weak var coordinator: AuthCoordinator?
    
    
}

// MARK: - Sign In with email/password
extension SignInViewModel {
    func signIn(email: String, password: String, completion: @escaping (_ success: Bool, _ error: Error?) -> Void) {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let error = error {
                    completion(false, error)
                } else {
                    completion(true, nil)
                }
            }
        }
}

// MARK: - Google Sign-In

enum AuthenticationError: Error {
case tokenError(message: String)
}

extension SignInViewModel {
   func signInWithGoogle() async -> Bool {
        guard let clientId = FirebaseApp.app()?.options.clientID else {
            fatalError("No client ID found in Firebase configuration")
        }
        let config = GIDConfiguration(clientID: clientId)
        GIDSignIn.sharedInstance.configuration = config
        
        guard let windowScene = await UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = await windowScene.windows.first,
              let rootViewController = await window.rootViewController else {
            print("There is no root view controller")
             return false
        }
        
        do {
            let userAuthentication = try await GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController)
            let user = userAuthentication.user
            guard let idToken = user.idToken else {
                throw AuthenticationError.tokenError(message: "ID token missing")
            }
            let accessToken = user.accessToken
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
            let result = try await Auth.auth().signIn(with: credential)
            let firebaseUser = result.user
            print("User \(firebaseUser.uid) signed in with email \(firebaseUser.email ?? "unknown")")
            return true
        } catch {
            print(error.localizedDescription)
           let _ = error.localizedDescription
            return false
        }
   }
}
