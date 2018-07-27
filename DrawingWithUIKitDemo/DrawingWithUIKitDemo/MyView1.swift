//
//  MyView1.swift
//  DrawingWithUIKitDemo
//
//  Created by Mazharul Huq on 7/16/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {

    override func draw(_ rect: CGRect) {
        //Cocoa provides the current context. No need to refer the context
        let w = self.frame.width
        let h = self.frame.height
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: w, y: 0))
        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0, y: h))
        path.close()
        path.lineWidth = 3.0
        UIColor.red.setStroke()
        path.stroke()
        
        let circle = UIBezierPath(ovalIn: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
        UIColor.blue.setFill()
        circle.fill()
    }

}
