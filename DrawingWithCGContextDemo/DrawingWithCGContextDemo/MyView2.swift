//
//  MyView2.swift
//  DrawingWithCGContextDemo
//
//  Created by Mazharul Huq on 6/28/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

    override func draw(_ rect: CGRect) {
        //Even though empty, it is necessary to include this method
        //Otherwise nothing would be drawn on the view
    }
    
    override func draw(_ layer: CALayer, in con: CGContext) {
        
        let w = self.frame.width
        let h = self.frame.height
        
        //This is necessary to prevent context showing in black
        con.addRect(CGRect(x: 0.0, y: 0.0, width: w , height: h ))
        con.setFillColor(UIColor.green.cgColor)
        con.fillPath()
        
        //Draw rectangle
        con.addRect(CGRect(x: 0.0, y: 0.0, width: w , height: h ))
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineWidth(3.0)
        con.strokePath()
        
        //Draw circle
        con.addEllipse(in: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
        con.setFillColor(UIColor.blue.cgColor)
        con.fillPath()
    }

}
