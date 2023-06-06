//
//  UIViewSignIn.swift
//  EcommerceApp
//
//  Created by Vakhtang on 03.06.2023.
//

import Foundation
import UIKit

class UIViewSignIn {
    
    var signInVC: SignInViewController?
    
    let contentView: UIView = {
        
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let textLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Sign In"
        let fontDescriptor = label.font.fontDescriptor
        let boldFontDescriptor = fontDescriptor.withSymbolicTraits(.traitBold)
        
        if let boldFontDescriptor = boldFontDescriptor {
            let boldFont = UIFont(descriptor: boldFontDescriptor, size: 22)
            label.font = boldFont
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "  E-mail"
        textField.borderStyle = .none
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.textContentType = .emailAddress
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "  Paswword"
        textField.borderStyle = .none
        textField.layer.cornerRadius = 20
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.textContentType = .password
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let logInButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let orLabel: UILabel = {
        
        let label = UILabel()
        label.text = "OR"
        let fontDescriptor = label.font.fontDescriptor
        let boldFontDescriptor = fontDescriptor.withSymbolicTraits(.traitBold)
        
        if let boldFontDescriptor = boldFontDescriptor {
            let boldFont = UIFont(descriptor: boldFontDescriptor, size: 22)
            label.font = boldFont
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let facebookButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Sign in with Facebook"
        let image = UIImage(named: "facebook")
        configuration.image = image?.withRenderingMode(.alwaysOriginal)
        configuration.imagePadding = 10
        let imageSize = CGSize(width: 24, height: 24)
        button.setImage(image?.resized(to: imageSize), for: .normal)
        configuration.titlePadding = 10
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        button.tintColor = .white
        button.configuration = configuration
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 20
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let googleButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Sign in with Google"
        let image = UIImage(named: "google")
        configuration.image = image?.withRenderingMode(.alwaysOriginal)
        configuration.imagePadding = 10
        let imageSize = CGSize(width: 24, height: 24)
        button.setImage(image?.resized(to: imageSize), for: .normal)
        configuration.titlePadding = 10
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        button.tintColor = .white
        button.configuration = configuration
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 20
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func signInUi() {
        signInVC!.view.addSubview(contentView)
        contentView.addSubview(textLabel)
        contentView.addSubview(emailTextField)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(logInButton)
        contentView.addSubview(orLabel)
        contentView.addSubview(facebookButton)
        contentView.addSubview(googleButton)
        
        //setUp contentView
        contentView.topAnchor.constraint(equalTo: signInVC!.view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: signInVC!.view.bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: signInVC!.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: signInVC!.view.rightAnchor).isActive = true
        
        //setUp textLabel
        textLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        textLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 130).isActive = true
        
        //setUp emailTextField
        emailTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 190).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 290).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        //setUp password TextField
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 290).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        //setUp logInButton
        logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25).isActive = true
        logInButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        logInButton.widthAnchor.constraint(equalToConstant: 270).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        //setUp orLabel
        orLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        orLabel.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 35).isActive = true
        
        //setUp facebookButton
        facebookButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 35).isActive = true
        facebookButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        facebookButton.widthAnchor.constraint(equalToConstant: 270).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        //setUp googleButton
        googleButton.topAnchor.constraint(equalTo: facebookButton.bottomAnchor, constant: 20).isActive = true
        googleButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        googleButton.widthAnchor.constraint(equalToConstant: 270).isActive = true
        googleButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
}
