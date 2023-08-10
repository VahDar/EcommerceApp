//
//  AddModuleUIView.swift
//  e-commerceApp
//
//  Created by Vakhtang on 08.08.2023.
//

import Foundation
import UIKit

class AddModuleUIView {
    
    let moduleVC: AddModuleViewController? = nil
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameModuleTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Enter name"
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let newWordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Add new word"
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter description"
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
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
        
        nameModuleTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        nameModuleTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        nameModuleTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -20).isActive = true
    }
}
