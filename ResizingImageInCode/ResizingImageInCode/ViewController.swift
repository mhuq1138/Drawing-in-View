//
//  ViewController.swift
//  ResizingImageInCode
//
//  Created by Mazharul Huq on 7/21/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageViewEntire: UIImageView!
    @IBOutlet var imageViewHalf: UIImageView!
    @IBOutlet var imageViewAFewPixels: UIImageView!
    
    var resizeMode:UIImage.ResizingMode = .tile
    var earth:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.earth = UIImage(named: "small_earth")
        self.resizeImage()
    }
    
    func resizeImage(){
        let earthResized = self.earth?.resizableImage(withCapInsets: .zero,resizingMode: self.resizeMode)
        self.imageViewEntire.image = earthResized
        
        let earthHalfResized = self.earth?.resizableImage(withCapInsets: UIEdgeInsets(top: self.earth.size.height/4.0, left: self.earth.size.width/4.0, bottom: self.earth.size.height/4.0, right: self.earth.size.width/4.0),resizingMode: self.resizeMode)
        self.imageViewHalf.image = earthHalfResized
        
        let earthCenterResized = self.earth?.resizableImage(withCapInsets: UIEdgeInsets(top: self.earth.size.height/2.0 - 3.0, left: self.earth.size.width/2.0 - 3.0, bottom: self.earth.size.height/2.0 - 3.0, right: self.earth.size.width/2.0 - 3.0),resizingMode: self.resizeMode)
        self.imageViewAFewPixels.image = earthCenterResized
    }

    @IBAction func chooseResizeMode(_ sender: Any) {
        let seg = sender as! UISegmentedControl
        if seg.selectedSegmentIndex == 0 {
            self.resizeMode = .tile
        }
        else{
            self.resizeMode = .stretch
        }
        self.resizeImage()
    }
    
}

