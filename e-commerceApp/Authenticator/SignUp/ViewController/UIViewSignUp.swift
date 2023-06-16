//
//  UIViewSignUp.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import UIKit

class UIViewSignUp {
    
    weak var singUpVC: SignUpViewController?
    weak var singUpVM: SignUpViewModel?
    
    
    // SetUp UI elements
    let contentView: UIView = {
        
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let textLabel: UILabel = {
        
       let label = UILabel()
        label.text = "Create new account"
        label.textColor = .black
        label.textAlignment = .left
        let fontDescriptor = label.font.fontDescriptor
        let boldFontDescriptor = fontDescriptor.withSymbolicTraits(.traitBold)
        
        if let boldFontDescriptor = boldFontDescriptor {
            let boldFont = UIFont(descriptor: boldFontDescriptor, size: 22)
            label.font = boldFont
        }
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "  Name"
        textField.borderStyle = .roundedRect
        textField.borderStyle = .none
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    
    let mailTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "  E-mail Adress"
        textField.borderStyle = .roundedRect
        textField.borderStyle = .none
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.textContentType = .emailAddress
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "  Password"
        textField.borderStyle = .roundedRect
        textField.borderStyle = .none
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        textField.textContentType = .password
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let signUpButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // SetUp constraints
    func setUpUI() {
        singUpVC!.view.addSubview(contentView)
        contentView.addSubview(textLabel)
        contentView.addSubview(nameTextField)
        contentView.addSubview(mailTextField)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(signUpButton)
        
        //setUp contentView
        contentView.topAnchor.constraint(equalTo: singUpVC!.view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: singUpVC!.view.bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: singUpVC!.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: singUpVC!.view.rightAnchor).isActive = true
        
        //setUp textLabel
        textLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        textLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 130).isActive = true
        
        //setUp nameTextFiled
        nameTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 190).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        nameTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        
        //setUp phoneTextFiled
        mailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 15).isActive = true
        mailTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        mailTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        mailTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        //setUp passwordTextFiled
        passwordTextField.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 15).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        //setUp signUpButton
        signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        
    }
    
}
