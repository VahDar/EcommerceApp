//
//  UIViewMainPage.swift
//  e-commerceApp
//
//  Created by Vakhtang on 16.06.2023.
//

import Foundation
import UIKit

class MainPageUIView {
    
    var mainVC: MainPageViewController?
    
    private let contentView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collection.register(MainPageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collection.backgroundColor = .white
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create module", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Out", for: .normal)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setUpView() {
        mainVC?.view.addSubview(contentView)
        contentView.addSubview(collectionView)
        contentView.addSubview(addButton)
        contentView.addSubview(signOutButton)
        
        //set up contentView
        contentView.topAnchor.constraint(equalTo: (mainVC?.view.topAnchor)!).isActive = true
        contentView.bottomAnchor.constraint(equalTo: (mainVC?.view.bottomAnchor)!).isActive = true
        contentView.leftAnchor.constraint(equalTo: (mainVC?.view.leftAnchor)!).isActive = true
        contentView.rightAnchor.constraint(equalTo: (mainVC?.view.rightAnchor)!).isActive = true
        
        //setup collectionview
        collectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 250).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15).isActive = true
        collectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15).isActive = true
        
        //setup button
        addButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 70).isActive = true
        addButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
        
        //setup signOutButton
        
        signOutButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 35).isActive = true
        signOutButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
    }
}

