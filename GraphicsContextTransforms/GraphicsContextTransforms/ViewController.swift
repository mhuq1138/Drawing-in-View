//
//  ViewController.swift
//  GraphicsContextTransforms
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var arrowView: MyView3!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arrowView.initialize()
    }
}

