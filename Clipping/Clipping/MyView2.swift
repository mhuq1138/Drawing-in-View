//
//  MyView2.swift
//  Clipping
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

    override func draw(_ rect: CGRect) {
        let position = CGPoint(x: 20.0, y: 60.0)
        let length:CGFloat = 150.0
        let width:CGFloat = 20.0
        let c = UIBezierPath()
        
        c.move(to: CGPoint(x: position.x , y: position.y - 0.8*width))
        c.addLine(to: CGPoint(x: position.x + length + width, y: position.y - 0.8*width ))
        c.addLine(to: CGPoint(x: position.x + length + width , y: position.y +  0.8*width ))
        c.addLine(to: CGPoint(x: position.x  , y: position.y +  0.8*width ))
        c.addLine(to: CGPoint(x: position.x  , y: position.y +  0.5*width ))
        c.addLine(to: CGPoint(x: position.x + width  , y: position.y ))
        c.addLine(to: CGPoint(x: position.x   , y: position.y - 0.5*width ))
        c.close()
        c.addClip()
        c.usesEvenOddFillRule = false
        
        
        let path = UIBezierPath()
        UIColor.blue.setStroke()
        path.lineWidth = width
        path.move(to: position)
        path.addLine(to: CGPoint(x: position.x + length, y: position.y))
        path.stroke()
        path.removeAllPoints()
        
        path.lineWidth = 2.0
        path.move(to: CGPoint(x: position.x + length, y: position.y + 0.8*width))
        path.addLine(to: CGPoint(x: position.x + length, y: position.y - 0.8*width))
        path.addLine(to: CGPoint(x: position.x + length + width, y: position.y ))
        path.addLine(to: CGPoint(x: position.x + length , y: position.y + 0.8*width ))
        UIColor.red.setFill()
        
        path.stroke()
        path.fill()
    }
    


}
