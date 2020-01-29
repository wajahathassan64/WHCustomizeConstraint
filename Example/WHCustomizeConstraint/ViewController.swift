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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        testLabel.centerInSuperView()
        firstLabel.text = "This is the firstLabel"
        secondLabel.text = "This is the secondLabel"
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        //        //        testLabel.centerVerticallyInSuperview()
        //        firstLabel.alignEdgeWithSuperviewSafeArea(.top, constant: 10)
        //        firstLabel.centerHorizontallyInSuperview()
        //        firstLabel.alignEdgeWithSuperviewSafeArea(.top, constant: 10)
        
        firstLabel.centerInSuperView()
        secondLabel.centerHorizontallyInSuperview()
//        secondLabel.topToBottom(firstLabel)
        firstLabel.bottomToTop(secondLabel, constant: 10)
        
        let width = firstLabel.width(constant: 10)
        width.width(constant: 200)
//        let a = firstLabel.bottomToTop(secondLabel)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

