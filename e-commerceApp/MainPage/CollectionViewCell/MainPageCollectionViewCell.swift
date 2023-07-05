//
//  MainPageCollectionViewCell.swift
//  e-commerceApp
//
//  Created by Vakhtang on 04.07.2023.
//

import UIKit

class MainPageCollectionViewCell: UICollectionViewCell {
    
    var uiView: UIViewMainPage? 
    
    let background: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let backgroundCell: UILabel = {
        let view = UILabel()
        view.backgroundColor = .green
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(background)
        background.addSubview(backgroundCell)
        
        background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        background.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        background.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        backgroundCell.topAnchor.constraint(equalTo: background.topAnchor).isActive = true
        backgroundCell.leadingAnchor.constraint(equalTo: background.leadingAnchor).isActive = true
        backgroundCell.trailingAnchor.constraint(equalTo: background.trailingAnchor).isActive = true
        backgroundCell.bottomAnchor.constraint(equalTo: background.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
