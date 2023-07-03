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
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collection.backgroundColor = .white
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add", for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sgin Out", for: .normal)
        button.layer.cornerRadius = 25
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
        collectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        //setup button
        addButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 90).isActive = true
        addButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
        
        //setup signOutButton
        
        signOutButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50).isActive = true
        signOutButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
    }
}
