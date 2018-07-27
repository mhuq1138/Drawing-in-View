//
//  ViewController.swift
//  ImageRendering
//
//  Created by Mazharul Huq on 7/23/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var middleButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageAutomatic = UIImage(named:"square")!.withRenderingMode(.automatic)
        let imageOriginal = UIImage(named:"square")!.withRenderingMode(.alwaysOriginal)
        let imageTemplate = UIImage(named:"square")!.withRenderingMode(.alwaysTemplate)
        self.leftButton.setBackgroundImage(imageAutomatic, for: UIControl.State())
        self.middleButton.setBackgroundImage(imageOriginal, for: UIControl.State())
        self.rightButton.setBackgroundImage(imageTemplate, for: UIControl.State())
    }
}

