//
//  MainPageViewController.swift
//  e-commerceApp
//
//  Created by Vakhtang on 16.06.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    var viewModel: MainPageViewModel?
    let uiView = UIViewMainPage()
    let newFolder = [Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView.mainVC = self
        uiView.setUpView()
        

    }

}
extension MainPageViewController: UICollectionViewDelegate {
    
}
extension MainPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newFolder.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = .gray
        return cell
    }
    
    
}
