//
//  ViewController.swift
//  DrawingWithUIKitDemo
//
//  Created by Mazharul Huq on 7/16/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var layerView: UIView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let renderer = UIGraphicsImageRenderer(size: self.imageView.bounds.size)
        
        let image = renderer.image{ _ in
            let w = self.imageView.bounds.size.width
            let h = self.imageView.bounds.size.height
            let rectangle = UIBezierPath(rect: CGRect(x: 0.0, y: 0.0, width: w , height: h ))
            UIColor.red.setStroke()
            rectangle.stroke()
            let circle = UIBezierPath(ovalIn: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
            UIColor.blue.setFill()
            circle.fill()
        }
        self.imageView.image = image
        
        let layer = MyLayer()
        layer.frame = CGRect(x: 0, y: 0, width: 240, height: 110)
        self.layerView.layer.addSublayer(layer)
        layer.setNeedsDisplay()
    }


}

