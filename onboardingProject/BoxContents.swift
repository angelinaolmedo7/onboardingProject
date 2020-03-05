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
        
    var title: String = "Custom Order"
    let dateCreated: Date = Date()

    var wormCount : Int = 0
    var stickers : Int = 0
    var tShirt : Int = 0
    var phoneCase : Int = 0

    init(myItems: [Item]) {
        for item in myItems {
            if item.itemType == .worm {
                wormCount += 1
            }
            else if item.itemType == .stickers {
                stickers += 1
            }
            else if item.itemType == .tShirt {
                tShirt += 1
            }
            else if item.itemType == .phoneCase {
                phoneCase += 1
            }
        }
    }
}
