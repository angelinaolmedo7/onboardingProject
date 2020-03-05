//
//  ViewController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 2/6/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var container: UIStackView!
    var pageControl: UIPageControl!
    
    let firstView: UIView = UIView()
    let secondView: UIView = UIView()
    let thirdView: UIView = UIView()
    
    var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpButton()
        setupScrollView()
    }
    
    func setUpButton() {
        nextButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        nextButton.backgroundColor = UIColor.black
        nextButton.setTitle("I'm ready!", for: .normal)
        nextButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction(sender: UIButton!) {
//        print("hee")
        let vc: SigninView = SigninView()
//        let navigationController = UINavigationController(rootViewController: vc)
        self.view.window!.rootViewController = vc //you can set it as root
    }
    
    func setupScrollView() {
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        view.addSubview(scrollView)
        
        scrollView.delegate = self
        
        container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        container.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(container)
        container.addArrangedSubview(firstView)
        container.addArrangedSubview(secondView)
        container.addArrangedSubview(thirdView)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        
        firstView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        
        pageControl = UIPageControl()
        view.addSubview(pageControl)
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor(white: 1.0, alpha: 0.4)
        pageControl.currentPageIndicatorTintColor = UIColor.white
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        createView(currentView: firstView, imageName: "boxonastring1", text: "Monthly unique boxes", isLastPage: false)
        createView(currentView: secondView, imageName: "boxonastring2", text: "Perfect for Worm on a String enthusiasts", isLastPage: false)
        createView(currentView: thirdView, imageName: "boxonastring3", text: "Welcome to Box on a String!", isLastPage: true)
    }
    
    func createView(currentView: UIView, imageName: String, text: String, isLastPage: Bool){
        let stackView = UIStackView()
        
        // Based on Techion gradient tutorial
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor(red: 16/255, green: 52/255, blue: 186/255, alpha: 1).cgColor, UIColor(red: 87/255, green: 135/255, blue: 230/255, alpha: 1).cgColor]
        gradient.shouldRasterize = true
        currentView.layer.addSublayer(gradient)
        
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
        
        if isLastPage {
            stackView.addArrangedSubview(nextButton)
        }
        
    }


}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
        
    }
    
}

extension UINavigationController {
    func initRootViewController(vc: UIViewController, transitionType type: String = "kCATransitionFade", duration: CFTimeInterval = 0.3) {
        self.addTransition(transitionType: type, duration: duration)
        self.viewControllers.removeAll()
        self.pushViewController(vc, animated: false)
        self.popToRootViewController(animated: false)
    }
    
    private func addTransition(transitionType type: String = "kCATransitionFade", duration: CFTimeInterval = 0.3) {
        let transition = CATransition()
        transition.duration = duration
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType(rawValue: type)
        self.view.layer.add(transition, forKey: nil)
    }
}

