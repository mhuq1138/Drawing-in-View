//
//  ViewController.swift
//  ImageSizeAndImageView
//
//  Created by Mazharul Huq on 7/19/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var clipSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iv = UIImageView(image: UIImage(named: "small_earth"))
        self.view.addSubview(iv)
        iv.center.x = iv.superview!.center.x
        iv.center.y = 120
        iv.backgroundColor = .green
    }
    @IBAction func contentModeSelect(_ sender: Any) {
        let seg = sender as! UISegmentedControl
        self.clipSwitch.isEnabled = false
        switch seg.selectedSegmentIndex{
        case 0:
            self.imageView.contentMode = .scaleToFill
        case 1:
            self.imageView.contentMode = .scaleAspectFit
        case 2:
            self.imageView.contentMode = .scaleAspectFill
            self.clipSwitch.isEnabled = true
        default:
            break
        }
    }
    
    @IBAction func clipImageTapped(_ sender: Any) {
        let sw = sender as! UISwitch
        self.imageView.clipsToBounds = sw.isOn
    }
    
}

