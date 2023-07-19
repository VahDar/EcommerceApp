//
//  MainPageViewController.swift
//  e-commerceApp
//
//  Created by Vakhtang on 16.06.2023.
//

import UIKit
import FirebaseAuth


class MainPageViewController: UIViewController {
    
    var viewModel: MainPageViewModel!
    let uiView = UIViewMainPage()
    let newFolder = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView.mainVC = self
        uiView.setUpView()
        signOutButtonPressed()
        uiView.collectionView.delegate = self
        uiView.collectionView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func signOutButtonPressed() {
        uiView.signOutButton.addTarget(self, action: #selector(signOutPressed), for: .touchUpInside)
    }
    
    @objc func signOutPressed() {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            viewModel?.logOutButton()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        print("button pressed")
        
    }
    

}
extension MainPageViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//           
//        return CGSize(width: uiView.collectionView.frame.width/1, height: uiView.collectionView.frame.height/4)
//       }
}
extension MainPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newFolder.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainPageCollectionViewCell

        cell.imageView.image = UIImage(named: newFolder[indexPath.row])

        return cell
    }

    

}

