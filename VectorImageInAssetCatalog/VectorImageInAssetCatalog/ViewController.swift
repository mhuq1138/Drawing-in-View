//
//  ViewController.swift
//  VectorImageInAssetCatalog
//
//  Created by Mazharul Huq on 7/18/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(frame: CGRect(x: 50, y: 300, width: 350, height: 350))
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        let image = UIImage(named: "star")
        imageView.image = image
    }


}

