//
//  ViewSetUp.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
//

import Foundation
import UIKit

class ViewSetUp {
    
    var mainAuth: MainAuthPageViewController?
  
   
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
        
    
    func setUp() {
        mainAuth!.view.addSubview(contentView)
        contentView.addSubview(imageView)
        
        //setUp ContentView
        contentView.topAnchor.constraint(equalTo: mainAuth!.view.topAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: mainAuth!.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: mainAuth!.view.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: mainAuth!.view.bottomAnchor).isActive = true
        
        //setUp Image View
        imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100).isActive = true
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        

    }
        
      
    
    
    
}
