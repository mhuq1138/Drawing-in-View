//
//  MyLayer.swift
//  DrawingWithCGContextDemo
//
//  Created by Mazharul Huq on 6/28/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyLayer: CALayer {
    override func draw(in con:CGContext){
        
        let w = self.frame.width
        let h = self.frame.height
        
        con.addRect(CGRect(x: 0.0, y: 0.0, width: w , height: h ))
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineWidth(3.0)
        con.strokePath()
        con.addEllipse(in: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
        con.setFillColor(UIColor.blue.cgColor)
        con.fillPath()
    }
}
