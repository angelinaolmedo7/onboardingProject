//
//  HomeView.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/2/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class HomeView: UIViewController {

    @IBOutlet weak var collView: UICollectionView!
    
    override func viewDidLoad() {

        super.viewDidLoad()

        collView.register(boxCollectionViewCell.nib, forCellWithReuseIdentifier: boxCollectionViewCell.identifier)
        setupNavBar()

    }
    
    func setupNavBar() {
        title = "Box on a String"
    }

}

extension HomeView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return habitImages.count

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HabitImageCollectionViewCell.identifier, for: indexPath) as! HabitImageCollectionViewCell
        if indexPath == selectedIndexPath{
            cell.setImage(image: habitImages[indexPath.row].0!, withSelection: true)
            
        }
        else{
            cell.setImage(image: habitImages[indexPath.row].0!, withSelection: false)
            
        }
        return cell }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width
        return CGSize(width: collectionViewWidth/4, height: collectionViewWidth/4)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        if selectedIndexPath == indexPath {
          selectedIndexPath = nil
        } else {
          selectedIndexPath = indexPath
        }
          return false
    }
}
