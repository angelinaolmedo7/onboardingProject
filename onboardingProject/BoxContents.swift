//
//  boxContents.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import Foundation
import UIKit

struct BoxContents {
        
    var title: String
    let dateCreated: Date = Date()
    var items: [Item]

    init(myItems: [Item], title: String="Custom Order") {
        self.title = title
        self.items = myItems
    }
    
    func listByQuantity() -> [(Item, Int)] {
    //returns tuple list with quantity instead of duplicated items
        var list : [(Item, Int)] = []
        var worms = 0
        var shirts = 0
        var stickers = 0
        var phone = 0
        for item in self.items {
            if item.itemType == .worm {
                worms += 1
            }
            else if item.itemType == .tShirt {
                shirts += 1
            }
            else if item.itemType == .stickers {
                stickers += 1
            }
            else if item.itemType == .phoneCase {
                phone += 1
            }
        }
        if worms > 0 {
            list.append((availableItems[0], worms))
        }
        if shirts > 0 {
            list.append((availableItems[3], shirts))
        }
        if stickers > 0 {
            list.append((availableItems[4], stickers))
        }
        if phone > 0 {
            list.append((availableItems[5], phone))
        }
        return list
    }
}

let past_boxes_presets = [
    BoxContents(myItems: [availableItems[0]], title: "December Box | Bronze"),
    BoxContents(myItems: [availableItems[0], availableItems[1]], title: "January Box | Silver"),
    BoxContents(myItems: [availableItems[0], availableItems[1], availableItems[3], availableItems[4], availableItems[5]], title: "February Box | Gold"),
    BoxContents(myItems: [availableItems[0], availableItems[1], availableItems[2], availableItems[3], availableItems[4], availableItems[5]], title: "March Box | Platinum")
]

