//
//  ViewController.swift
//  SizeClassAndAssetCatalog
//
//  Created by Mazharul Huq on 7/19/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myView: MyView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myView.image = UIImage(named: "Flowers")
        
        let tcdisp = UITraitCollection(displayScale: UIScreen.main.scale)
        let tcphone = UITraitCollection(userInterfaceIdiom: .phone)
        let tcReg = UITraitCollection(verticalSizeClass: .regular)
        let tcCom = UITraitCollection(verticalSizeClass: .compact)
        let tc1 = UITraitCollection(traitsFrom:[tcdisp,tcphone,tcReg])
        let tc2 = UITraitCollection(traitsFrom:[tcdisp,tcphone,tcCom])
        let scenes = UIImageAsset()
        let cherry = UIImage(named: "cherry_blossom")?.withRenderingMode(.alwaysOriginal)
        let flower = UIImage(named: "flower")?.withRenderingMode(.alwaysOriginal)
        scenes.register(cherry!, with: tc1)
        scenes.register(flower!, with: tc2)
        let tc = self.traitCollection
        let im = scenes.image(with: tc)
        self.imageView.image = im
    }


}

