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

    private lazy var testLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testLabel.centerInSuperView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

