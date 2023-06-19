//
//  UIViewMainPage.swift
//  e-commerceApp
//
//  Created by Vakhtang on 16.06.2023.
//

import Foundation
import UIKit

class UIViewMainPage {
    
    var mainVC: MainPageViewController?
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let createNewModule: UIButton = {
        let button = UIButton()
        button.setTitle("Create folder", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return button
    }()
    
    let myFolders: UIButton = {
       let button = UIButton()
        button.setTitle("Folders", for: .normal)
    }()
    
    private let discriptionModelLabel: UILabel = {
        let label = UILabel()
        label.text = "start learning words"
    }()
}
