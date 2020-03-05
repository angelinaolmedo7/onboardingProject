//
//  Item.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import Foundation
import UIKit

struct Item : Hashable {
    enum ItemType: Int, Codable, CaseIterable {
        case worm
        case tShirt
        case stickers
        case phoneCase
    }
    var image : UIImage!
    var title : String!
    var itemType : ItemType
    
    init (image: UIImage, title: String, itemType: ItemType) {
        self.image = image
        self.title = title
        self.itemType = itemType
    }
}

var availableItems = [
    Item(image: UIImage(named: "boxonastring-plan-bronze")!, title: "Worm", itemType: .worm),
    Item(image: UIImage(named: "boxonastring-plan-bronze")!, title: "Worm", itemType: .worm),
    Item(image: UIImage(named: "boxonastring-plan-bronze")!, title: "Worm", itemType: .worm),
    Item(image: UIImage(named: "boxonastring-plan-bronze")!, title: "tShirt", itemType: .tShirt),
    Item(image: UIImage(named: "boxonastring-plan-bronze")!, title: "Stickers", itemType: .stickers),
    Item(image: UIImage(named: "boxonastring-plan-bronze")!, title: "Phone Case", itemType: .phoneCase)
]

