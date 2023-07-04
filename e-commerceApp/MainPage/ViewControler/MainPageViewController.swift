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
    let newFolder = ["one", "two", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView.mainVC = self
        uiView.setUpView()
        signOutButtonPressed()
       
        
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
extension MainPageViewController: UICollectionViewDelegate {

}
extension MainPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newFolder.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! UICollectionViewCell
        
        return cell
    }


}
