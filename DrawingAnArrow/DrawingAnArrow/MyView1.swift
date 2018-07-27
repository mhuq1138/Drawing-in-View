//
//  MyView1.swift
//  DrawingAnArrow
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {

    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        drawArrow(con: con, position: CGPoint(x: 20.0, y: 60.0), length: 150.0, width: 20.0)
        drawArrow(con: con, position: CGPoint(x: 20.0, y: 120.0), length: 200.0, width: 10.0)
    }
    
    func drawArrow(con:CGContext,position:CGPoint, length:CGFloat, width:CGFloat){
        
        //Draw shaft
        con.setStrokeColor(UIColor.blue.cgColor)
        con.move(to: position)
        con.addLine(to: CGPoint(x: position.x + length, y: position.y))
        con.setLineWidth(width)
        con.strokePath()
        
        con.setLineWidth(2.0)
        con.move(to: CGPoint(x: position.x + length, y: position.y + 0.8*width))
        con.addLine(to: CGPoint(x: position.x + length, y: position.y - 0.8*width))
        con.addLine(to: CGPoint(x: position.x + length + width, y: position.y ))
        con.addLine(to: CGPoint(x: position.x + length , y: position.y + 0.8*width ))
        con.setFillColor(UIColor.red.cgColor)
        con.drawPath(using: .fillStroke)
        
        con.move(to: CGPoint(x: position.x , y: position.y + 0.5*width))
        con.addLine(to: CGPoint(x: position.x + width, y: position.y ))
        con.addLine(to: CGPoint(x: position.x , y: position.y -  0.5*width ))
        let color = self.backgroundColor
        con.setFillColor((color?.cgColor)!)
        con.fillPath()
        
    }


}
