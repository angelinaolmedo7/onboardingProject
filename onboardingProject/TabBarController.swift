//
//  TabBarController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/2/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    func setupViewControllers(){
        let vc = HomeView()
        let vc1 = NewBoxView()
        let pastBoxVC = PastBoxesView()
        let staffVC = UIHostingController(rootView: ContentView())

        vc.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        vc1.tabBarItem = UITabBarItem(title: "New Box", image: UIImage(named: "box"), selectedImage: UIImage(named: "box"))
        pastBoxVC.tabBarItem = UITabBarItem(title: "Past Boxes", image: UIImage(named: "clock"), selectedImage: UIImage(named: "clock"))
        staffVC.tabBarItem = UITabBarItem(title: "Staff", image: UIImage(named: "person"), selectedImage: UIImage(named: "person"))

        viewControllers = [vc, vc1, pastBoxVC, staffVC]
    }
    
}
