//
//  ViewController.swift
//  HiResFilesAndAssetCatalogs
//
//  Created by Mazharul Huq on 7/17/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Image in asset catalog
        self.imageView1.image = UIImage(named: "one")
        if let s = Bundle.main.path(forResource: "numero", ofType: "png") {
            self.imageView2.image = UIImage(contentsOfFile: s)
        }
        
        if let s = Bundle.main.path(forResource: "uno", ofType: "png") {
            self.imageView3.image = UIImage(contentsOfFile: s)
        } else {
            print("looking for smiley")
            self.imageView3.image = UIImage(named:"smiley")
        }
    }


}

