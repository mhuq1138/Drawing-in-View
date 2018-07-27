//
//  MyLayer.swift
//  DrawingWithUIKitDemo
//
//  Created by Mazharul Huq on 7/16/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyLayer: CALayer {
    override func draw(in con:CGContext){
        UIGraphicsPushContext(con)
        let w = self.frame.width
        let h = self.frame.height
        let rectangle = UIBezierPath(rect: CGRect(x: 0.0, y: 0.0, width: w , height: h ))
        UIColor.red.setStroke()
        rectangle.lineWidth = 3.0
        rectangle.stroke()
        let circle = UIBezierPath(ovalIn: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
        UIColor.blue.setFill()
        circle.fill()
        UIGraphicsPopContext()
    }
}
