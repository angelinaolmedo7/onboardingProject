//
//  SigninView.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/1/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit
import SwiftUI

class SigninView: UIViewController {

    @IBAction func goButton(_ sender: Any) {
        print("haa")
        let vc: TabBarController = TabBarController()
        let navigationController = UINavigationController(rootViewController: vc)
        self.view.window!.rootViewController = navigationController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
