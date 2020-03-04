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

    @IBOutlet weak var logoImage: UIImageView!
    @IBAction func goButton(_ sender: Any) {
        let vc: TabBarController = TabBarController()
        let navigationController = UINavigationController(rootViewController: vc)
        self.view.window!.rootViewController = navigationController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 0.2,
                       usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
            self.logoImage.center.y += 50
        }, completion: nil)
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
