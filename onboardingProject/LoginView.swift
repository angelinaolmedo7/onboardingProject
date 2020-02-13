//
//  LoginView.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 2/11/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class LoginView: UIViewController {
        
        var scrollView: UIScrollView!
        var container: UIStackView!
        var pageControl: UIPageControl!
        
        let firstView: UIView = UIView()
        let secondView: UIView = UIView()
        let thirdView: UIView = UIView()

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        func createView(currentView: UIView, imageName: String, text: String, isLastPage: Bool, color: UIColor){
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 20
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.distribution = .fill
            currentView.addSubview(stackView)
            
            stackView.widthAnchor.constraint(equalTo: currentView.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
            stackView.heightAnchor.constraint(equalTo: currentView.layoutMarginsGuide.heightAnchor, multiplier: 0.50).isActive = true
            stackView.centerYAnchor.constraint(equalTo: currentView.centerYAnchor).isActive = true
            stackView.centerXAnchor.constraint(equalTo: currentView.centerXAnchor).isActive = true
            
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFit
            stackView.addArrangedSubview(imageView)
            imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.60).isActive = true
            
            let message = UILabel()
            message.numberOfLines = 0
            message.textAlignment = .center
            message.text = text
            message.font = UIFont(name: "Helvetica", size: 20)
            message.textColor = UIColor(white: 1.0, alpha: 0.8)
            stackView.addArrangedSubview(message)
            
            currentView.backgroundColor = color
            
        }


    }
