//
//  MainAuthPageViewController.swift
//  EcommerceApp
//
//  Created by Vakhtang on 02.06.2023.
//

import UIKit

class MainAuthPageViewController: UIViewController {

    let viewSetUp = ViewSetUp()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetUp.mainAuth = self
        viewSetUp.setUp()
    }
    

    

}
