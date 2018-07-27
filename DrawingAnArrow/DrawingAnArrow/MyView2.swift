//
//  MyView2.swift
//  DrawingAnArrow
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

    override func draw(_ rect: CGRect) {
        
        drawArrow( position: CGPoint(x: 20.0, y: 60.0), length: 150.0, width: 20.0)
        drawArrow( position: CGPoint(x: 20.0, y: 120.0), length: 200.0, width: 10.0)
    }
    
    func drawArrow(position:CGPoint, length:CGFloat, width:CGFloat){
        
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
        path.removeAllPoints()
        
        path.move(to: CGPoint(x: position.x , y: position.y + 0.5*width))
        path.addLine(to: CGPoint(x: position.x + width, y: position.y ))
        path.addLine(to: CGPoint(x: position.x , y: position.y -  0.5*width ))
        let color = self.backgroundColor
        color?.setFill()
        path.fill()
        
    }

}
