//
//  boxLevels.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/4/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import Foundation
import UIKit

struct boxLevel {
    var image : UIImage!
    var title : String!
    var subtitle : String!
    var desc : String!
    var price : Float!
    
    init (image: UIImage, title: String, subtitle: String, desc: String, price: Float = 0.00) {
        self.image = image
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.price = price
    }
}

var levels = [
    boxLevel(image: UIImage(named: "boxonastring-plan-bronze")!, title: "Bronze", subtitle: "Beginner Level", desc: "A basic plan that brings all the joys of Worm on a String to your door monthly. Perfect for beginners, or those looking to supplement a pre-existing collection. Includes one standard worm monthly.", price: 1.00),
    boxLevel(image: UIImage(named: "boxonastring-plan-silver")!, title: "Silver", subtitle: "Collector Level", desc: "A step up from the Beginner Level, the Silver Plan offers twice the worm for 3/4 the ppw (price per worm). This plan is great for anyone seeking to expand their collection, or for the beginner looking for a head start in the hobby. Includes two standard worms monthly.", price: 1.50),
    boxLevel(image: UIImage(named: "boxonastring-plan-gold")!, title: "Gold", subtitle: "Pro Level", desc: "The Gold Plan is for those who want their lifestyle to match their love for Worms on a String. This pro-level package pairs Worm on a String merchandise with the worms themselves. Includes two standard worms and one miscellaneous worm-based item (ex. t-Shirt, stickers) monthly.", price: 5.00),
    boxLevel(image: UIImage(named: "boxonastring-plan-platinum")!, title: "Platinum", subtitle: "Ultimate Level", desc: "The ultimate plan for the Worm-on-a-String fan who has it all. The Platinum Plan includes all the benefits of the previous level, along with custom, handmade worms and priority shipping. Includes two standard worms, one miscellaneous worm-based item (ex. t-Shirt, stickers), and one handmade worm monthly. Package tracking provided.", price: 10.00)
]
