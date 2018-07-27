//
//  MyView1.swift
//  UIBezierPathLinesAndShapes
//
//  Created by Mazharul Huq on 7/26/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {

    override func draw(_ rect: CGRect) {
        
        let w = self.bounds.size.width
        let h = self.bounds.size.height
        
        //A horizontal line of color red and thickness 1.0
        drawLineBezier(CGPoint(x: 20.0,y: 20.0),end: CGPoint(x: w - 20.0, y: 20.0), thickness:3.0,  color:UIColor.blue)
        //A horizontal line of color brown and thickness 20.0
        drawLineBezier(CGPoint(x: 20.0,y: 40.0),end: CGPoint(x: w - 20.0, y: 40.0), thickness:10.0,  color:UIColor.red)
 
        let p:UIBezierPath = UIBezierPath()
        UIColor.orange.setStroke()
        p.move(to: CGPoint(x:  20.0, y: h - 20.0))
        p.addLine(to: CGPoint(x: w/2.0, y: h - 20.0))
        p.addLine(to: CGPoint(x: w/2.0 + 40.0, y: 60.0))
        p.lineWidth = 15.0
        p.lineCapStyle = .round
        p.lineJoinStyle = .round
        p.stroke()
        
        p.removeAllPoints()//Remove existing points in the path
        p.lineWidth = 3.0
        UIColor.brown.setStroke()
        p.move(to: CGPoint(x:  20.0, y: 60.0))
        p.addLine(to: CGPoint(x: w - 20.0, y: h - 30.0))
        p.stroke()
       
    }
    
    func drawLineBezier(_ start:CGPoint, end:CGPoint, thickness:CGFloat,color: UIColor)
    {
        //Create a Bezier path
        let p:UIBezierPath = UIBezierPath()
        //Set the color to that provide by the parameter color
        color.setStroke()
        //Move the start point
        p.move(to: start)
        //Add line to end point
        p.addLine(to: end)
        //Set line width to parameter thickness
        p.lineWidth = thickness
        //Draw the line
        p.stroke()
    }

}
