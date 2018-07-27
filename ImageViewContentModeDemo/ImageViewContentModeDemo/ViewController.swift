//
//  ViewController.swift
//  ImageViewContentModeDemo
//
//  Created by Mazharul Huq on 7/20/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var modeLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var option = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.contentMode = .scaleToFill
        self.modeLabel.text = "Content Mode: Scale To Fill"
    }
    
    func displayImage(_ option:Int){
        
        switch option {
        case 0:
            self.imageView.contentMode = .scaleToFill
            self.modeLabel.text = "Content Mode: Scale To Fill"
            
        case 1:
            self.imageView.contentMode = .scaleAspectFit
            self.modeLabel.text = "Content Mode: Aspect Fit"
            
        case 2:
            self.imageView.contentMode = .scaleAspectFill
            self.modeLabel.text = "Content Mode: Aspect Fill"
            
        case 3:
            self.imageView.contentMode = .topLeft
            self.modeLabel.text = "Content Mode: Top Left"
            
        case 4:
            self.imageView.contentMode = .top
            self.modeLabel.text = "Content Mode: Top"
            
        case 5:
            self.imageView.contentMode = .topRight
            self.modeLabel.text = "Content Mode: Top Right"
            
            
        case 6:
            self.imageView.contentMode = .left
            self.modeLabel.text = "Content Mode: Left"
            
        case 7:
            self.imageView.contentMode = .center
            self.modeLabel.text = "Content Mode: Center"
        
        case 8:
            self.imageView.contentMode = .right
            self.modeLabel.text = "Content Mode: Right"
            
        case 9:
            self.imageView.contentMode = .bottomLeft
            self.modeLabel.text = "Content Mode: Bottom Left"
            
        case 10:
            self.imageView.contentMode = .bottom
            self.modeLabel.text = "Content Mode: Bottom"
            
        case 11:
            self.imageView.contentMode = .bottomRight
            self.modeLabel.text = "Content Mode: Bottom Right"
            
        default:
            print("This should never arise")
        }
        
    }

    @IBAction func changeContentModeTapped(_ sender: Any) {
        option += 1
        displayImage(option)
        if option == 11 {
            option = -1
        }
    }
}

