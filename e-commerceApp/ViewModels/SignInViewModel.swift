//
//  SignInViewModel.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import FirebaseCore
import GoogleSignIn
import FirebaseAuth


class SignInViewModel {
    
    weak var coordinator: AuthCoordinator?
    
    // setUp Google button
    @objc func googleSignInPressed() {
        
        //get app clientID
        guard let clientID = FirebaseApp.app()?.options.clientID else { fatalError("No client ID found in Firebase configuration") }
        
        // get config
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first,
              let rootViewController = window.rootViewController else {
            return}
        
        //Sign in
        GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController) { [unowned self] result, error in
            guard error == nil else {
                return
            }
            guard let user = result?.user,
                  let idToken = user.idToken?.tokenString else { return }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { result, error  in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    let firebaseUser = result?.user
                    print("User \(firebaseUser?.uid) signed in with email \(firebaseUser?.email ?? "unknown")")
                    self.coordinator?.goToMainPage()
                    
                }
            }
        }
         
    }
    
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

