//
//  ViewController.swift
//  WHCustomizeConstraint
//
//  Created by wajahathassan64 on 01/29/2020.
//  Copyright (c) 2020 wajahathassan64. All rights reserved.
//

import UIKit
import WHCustomizeConstraint

class ViewController: UIViewController {
    
    var constant: CGFloat = 10.0
    private lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        testLabel.centerInSuperView()
        firstLabel.text = "This is the firstLabel"
        secondLabel.text = "This is the secondLabel"
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(animateButton)
        
        firstLabel.topToBottom(firstLabel, constant: 100, isActive: false)
        
        animateButton.height(constant: 52)
        animateButton.width(constant: 192)
        animateButton.centerHorizontallyInSuperview()
        animateButton.alignEdgeWithSuperviewSafeArea(.bottom, constant: 20)
        //        //        testLabel.centerVerticallyInSuperview()
        //        firstLabel.alignEdgeWithSuperviewSafeArea(.top, constant: 10)
        //        firstLabel.centerHorizontallyInSuperview()
        //        firstLabel.alignEdgeWithSuperviewSafeArea(.top, constant: 10)
        
        firstLabel.centerInSuperView(isActive: true)
        secondLabel.centerHorizontallyInSuperview()
        //        secondLabel.topToBottom(firstLabel)
        firstLabel.topToBottom(secondLabel, constant: constant)
        
        //        let a = firstLabel.bottomToTop(secondLabel)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonAction(sender: UIButton!) {
      print("pressed")
        constant = 100.0
        UIViewPropertyAnimator(duration: 4, dampingRatio: 0.4) {
            self.view.layoutIfNeeded()
        }.startAnimation()
    }
    
}

