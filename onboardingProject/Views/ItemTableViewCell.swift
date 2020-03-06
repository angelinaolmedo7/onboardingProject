//
//  ItemTableViewCell.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var favIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    static let identifier = "ItemTableCell"

    // Returning the xib file after instantiating it
    static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func configure(_ contents: (Item, Int)) {
        self.imageIcon.image = contents.0.image
        self.titleLabel.text = contents.0.title
        self.quantityLabel.text = "\(contents.1)"
    }
    
    func setImage(image: UIImage, withSelection: Bool) {
        if withSelection {
            self.favIcon.image = image.withRenderingMode(.alwaysOriginal)
        }
        else {
            self.favIcon.image = image.withRenderingMode(.alwaysTemplate)
            self.favIcon.tintColor = UIColor.gray
        }
    }
}
