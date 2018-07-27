//
//  MyView2.swift
//  DrawingWithUIKitDemo
//
//  Created by Mazharul Huq on 7/16/18.
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
        
        UIGraphicsPushContext(con)
        //To prevent a blackground we have to fill the context with
        //a rectangle (green background)
        let backRect = UIBezierPath(rect: CGRect(x: 0, y: 0, width: w, height: h))
        UIColor.green.setFill()
        backRect.fill()
        
        let rectangle = UIBezierPath(rect: CGRect(x: 0.0, y: 0.0, width: w , height: h))
        rectangle.lineWidth = 3.0
        UIColor.brown.setStroke()
        rectangle.stroke()
        
        let circle = UIBezierPath(ovalIn: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
        UIColor.blue.setFill()
        circle.fill()
        UIGraphicsPopContext()
    }


}
