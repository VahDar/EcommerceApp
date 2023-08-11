//
//  AddModuleUIView.swift
//  e-commerceApp
//
//  Created by Vakhtang on 08.08.2023.
//

import Foundation
import UIKit

class AddModuleUIView {
    
    var moduleVC: AddModuleViewController?
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameModuleTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Enter name"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let newWordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Add new word"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter description"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 15
        let boldFont = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = boldFont
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setUpUIModule() {
        moduleVC!.view.addSubview(contentView)
        contentView.addSubview(nameModuleTextField)
        contentView.addSubview(newWordTextField)
        contentView.addSubview(descriptionTextField)
        contentView.addSubview(saveButton)
        
        contentView.topAnchor.constraint(equalTo: moduleVC!.view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: moduleVC!.view.bottomAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: moduleVC!.view.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: moduleVC!.view.trailingAnchor).isActive = true
        
        nameModuleTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 130).isActive = true
        nameModuleTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        nameModuleTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        nameModuleTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        newWordTextField.topAnchor.constraint(equalTo: nameModuleTextField.bottomAnchor, constant: 20).isActive = true
        newWordTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        newWordTextField.widthAnchor.constraint(equalToConstant: 150).isActive = true
        newWordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        descriptionTextField.topAnchor.constraint(equalTo: nameModuleTextField.bottomAnchor, constant: 20).isActive = true
        descriptionTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30).isActive = true
        descriptionTextField.widthAnchor.constraint(equalToConstant: 150).isActive = true
        descriptionTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        saveButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 75).isActive = true
        saveButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30).isActive = true
        saveButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
