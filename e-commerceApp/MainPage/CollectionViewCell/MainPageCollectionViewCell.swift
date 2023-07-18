//
//  MainPageCollectionViewCell.swift
//  e-commerceApp
//
//  Created by Vakhtang on 04.07.2023.
//

import UIKit

class MainPageCollectionViewCell: UICollectionViewCell {
    
    var uiView: UIViewMainPage? {
        didSet {
            guard let uiView = uiView else { return }
        }
    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.borderWidth = 2
        image.layer.cornerRadius = 15
        image.layer.borderColor = UIColor.black.cgColor
        image.clipsToBounds = true
        return image
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
