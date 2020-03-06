//
//  NewBoxView.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/2/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class NewBoxView: UIViewController {
    
    var selectedPaths: [IndexPath?]? = [] {
            didSet {
                var indexPaths: [IndexPath] = []
                for selectedIndexPath in selectedPaths! {
                    if let selectedIndexPath = selectedIndexPath {
                        indexPaths.append(selectedIndexPath)
                    }
                }
                if let oldValue = oldValue {
                    for deselectedPath in oldValue {
                        if !indexPaths.contains(deselectedPath!){
                            indexPaths.append(deselectedPath!)
                        }
                    }
                }
                collectionView.performBatchUpdates({
                    self.collectionView.reloadItems(at: indexPaths)
                })
            }
        }
    
//    var selectedIndexPath: IndexPath? {
//        didSet {
//            var indexPaths: [IndexPath] = []
//            if let selectedIndexPath = selectedIndexPath {
//                indexPaths.append(selectedIndexPath)
//            }
//            if let oldValue = oldValue {
//                indexPaths.append(oldValue)
//            }
//            collectionView.performBatchUpdates({
//                self.collectionView.reloadItems(at: indexPaths)
//            })
//        }
//    }

    @IBOutlet weak var collectionView: UICollectionView!
    @IBAction func submitButtonPressed(_ sender: Any) {
//        guard let selectedIndexPath = selectedIndexPath else {return}
    }
    
    
    override func viewDidLoad() {

            super.viewDidLoad()
            collectionView.register(ItemCollectionViewCell.nib, forCellWithReuseIdentifier: ItemCollectionViewCell.identifier)
            
            collectionView.dataSource = self
            collectionView.delegate = self
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController!.navigationItem.title = "Select Items"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController!.navigationItem.title = "Staff"
    }
}



    extension NewBoxView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

            return availableItems.count

        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCollectionViewCell.identifier, for: indexPath) as! ItemCollectionViewCell
//            print(selectedPaths!.contains(indexPath))
            if selectedPaths!.contains(indexPath){
                cell.setImage(image: availableItems[indexPath.row].image, withSelection: true)
                
            }
            else{
                cell.setImage(image: availableItems[indexPath.row].image, withSelection: false)
                
            }
            cell.itemLabel.text = availableItems[indexPath.row].title
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
            if selectedPaths!.contains(indexPath) {
                selectedPaths!.remove(at: selectedPaths!.firstIndex(of: indexPath)!)
            } else {
                selectedPaths!.append(indexPath)
            }
              return false
        }
    }
