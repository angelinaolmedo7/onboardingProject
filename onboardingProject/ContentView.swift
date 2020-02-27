//
//  ViewController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 2/6/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class ContentView: UIViewController {
    
    var container: UIStackView!
    var nextButton: UIButton!
    let myView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpButton()
    }
    
    func setUpButton() {
        nextButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        nextButton.backgroundColor = UIColor.blue
        nextButton.setTitle("test", for: .normal)
        nextButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        print("hoo")
        
        container = UIStackView()
        container.addArrangedSubview(nextButton)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        self.view.window!.rootViewController = ContentView()
    }
}
