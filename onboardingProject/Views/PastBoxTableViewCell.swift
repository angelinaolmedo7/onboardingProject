//
//  PastBoxTableViewCell.swift
//  Habitual
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class PastBoxTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    static let identifier = "PastBoxCell"

    // Returning the xib file after instantiating it
    static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func configure(_ contents: BoxContents) {
        self.titleLabel.text = contents.title
        self.dateLabel.text = contents.dateCreated.stringValue
        self.countLabel.text = "\(contents.items.count)"
    }
}
