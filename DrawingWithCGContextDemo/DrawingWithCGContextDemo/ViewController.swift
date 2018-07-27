//
//  ViewController.swift
//  DrawingWithCGContextDemo
//
//  Created by Mazharul Huq on 6/28/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var layerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layer = MyLayer()
        layer.frame = CGRect(x: 0, y: 0, width: 240, height: 110)
        self.layerView.layer.addSublayer(layer)
        layer.setNeedsDisplay()
        
        let renderer = UIGraphicsImageRenderer(size: self.imageView.bounds.size)
        
        let image = renderer.image{ _ in
            let w = self.imageView.bounds.size.width
            let h = self.imageView.bounds.size.height
            let con = UIGraphicsGetCurrentContext()
            con?.addRect(CGRect(x: 0.0, y: 0.0, width: w , height: h ))
            con?.setStrokeColor(UIColor.red.cgColor)
            con?.setLineWidth(3.0)
            con?.strokePath()
            con?.addEllipse(in: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
            con?.setFillColor(UIColor.blue.cgColor)
            con?.fillPath()
        }
        self.imageView.image = image
    }
}

