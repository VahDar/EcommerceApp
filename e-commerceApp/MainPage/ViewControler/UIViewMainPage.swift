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
    
    private let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collection.translatesAutoresizingMaskIntoConstraints = false
    }()
    
    
    func setUpView() {
        mainVC?.view.addSubview(contentView)
        contentView.addSubview(collectionView)
        
        //set up contentView
        contentView.topAnchor.constraint(equalTo: (mainVC?.view.topAnchor)!).isActive = true
        contentView.bottomAnchor.constraint(equalTo: (mainVC?.view.bottomAnchor)!).isActive = true
        contentView.leftAnchor.constraint(equalTo: (mainVC?.view.leftAnchor)!).isActive = true
        contentView.rightAnchor.constraint(equalTo: (mainVC?.view.rightAnchor)!).isActive = true
    }
}
