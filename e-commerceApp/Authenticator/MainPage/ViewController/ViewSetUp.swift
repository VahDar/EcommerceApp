//
//  ViewSetUp.swift
//  e-commerceApp
//
//  Created by Vakhtang on 10.06.2023.
//

import Foundation
import UIKit

class ViewSetUp {
    
    weak var mainAuth: MainAuthPageViewController?
  
   // SetUp UI view elements
    let contentView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private let imageView: UIImageView = {
        
        let imageLogo = UIImage(named: "example")
        let imageView = UIImageView()
        imageView.image = imageLogo
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
        
    private let welcomeLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Welcome to someName"
        label.textColor = .black
        label.textAlignment = .center
        let fontDescriptor = label.font.fontDescriptor
        let boldFontDescriptor = fontDescriptor.withSymbolicTraits(.traitBold)
        
        if let boldFontDescriptor = boldFontDescriptor {
            let boldFont = UIFont(descriptor: boldFontDescriptor, size: 16)
            label.font = boldFont
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        
       let label = UILabel()
        label.text = "Example text descriptions blah-blah"
        label.textColor = .lightGray
        label.textAlignment = .center
        let fontDescriptor = label.font.fontDescriptor
        let italicFontDescriptor = fontDescriptor.withSymbolicTraits(.traitItalic)
        
        if let italicFontDescriptor = italicFontDescriptor {
            let italicFont = UIFont(descriptor: italicFontDescriptor, size: 14)
            
            label.font = italicFont
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
        let logInButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 20
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
        let signUpButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Sign Up", for: .normal)
        button.layer.cornerRadius = 20
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // SetUp constraints
    func setUp() {
        mainAuth!.view.addSubview(contentView)
        contentView.addSubview(imageView)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(welcomeLabel)
        contentView.addSubview(logInButton)
        contentView.addSubview(signUpButton)
        
        //setUp ContentView
        contentView.topAnchor.constraint(equalTo: mainAuth!.view.topAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: mainAuth!.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: mainAuth!.view.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: mainAuth!.view.bottomAnchor).isActive = true
        
        //setUp Image View
        imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 140).isActive = true
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //setup Description label
        descriptionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 10).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        //setUp Welcome label
        welcomeLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        welcomeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        welcomeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        //setUp LogIn Button
        logInButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 55).isActive = true
        logInButton.widthAnchor.constraint(equalToConstant: 220).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        logInButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true

        //setUp Sign Up button
        signUpButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 23).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 220).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    }
   
}
