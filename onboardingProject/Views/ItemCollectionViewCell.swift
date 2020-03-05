//
//  ItemCollectionViewCell.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    static let identifier = "ItemImageCell"

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

    func setImage(image: UIImage, withSelection: Bool) {
        if withSelection {
            self.itemImage.image = image.withRenderingMode(.alwaysOriginal)
        }
        else {
            self.itemImage.image = image.withRenderingMode(.alwaysTemplate)
            self.itemImage.tintColor = UIColor.gray
        }
    }
}
