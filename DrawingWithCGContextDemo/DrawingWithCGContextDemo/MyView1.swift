//
//  MyView1.swift
//  DrawingWithCGContextDemo
//
//  Created by Mazharul Huq on 6/28/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {

    override func draw(_ rect: CGRect) {
        
        let w = self.frame.width
        let h = self.frame.height
        //Reference to Cocoa provided context
        let con = UIGraphicsGetCurrentContext()
        
        //Draw a rectangle along the perimeter of the frame
        con?.move(to: CGPoint(x: 0.0, y: 0.0))
        con?.addLine(to: CGPoint(x: w, y: 0.0))
        con?.addLine(to: CGPoint(x: w, y: h))
        con?.addLine(to: CGPoint(x: 0.0, y: h))
        con?.closePath()
        con?.setLineWidth(3.0)//Set stroke line width
        con?.setStrokeColor(UIColor.red.cgColor)//Set stroke color
        con?.strokePath()//Stroke the path
        
        //Draw a circle at the center of the rectangle
        con?.addEllipse(in: CGRect(x: w/2 - h/4, y: h/4, width: h/2, height: h/2))
        con?.setFillColor(UIColor.blue.cgColor)//Set fill color
        con?.fillPath()//Fill the path
    }

}
