//
//  boxCollectionViewCell.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/4/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class boxCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    static let identifier = "boxImageCell"

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}
