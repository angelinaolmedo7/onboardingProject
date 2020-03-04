//
//  TabBarController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/2/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    func setupViewControllers(){
        let vc = HomeView()
        let vc1 = NewBoxView()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)

        viewControllers = [vc, vc1]
    }
    
}
