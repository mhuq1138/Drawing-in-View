//
//  MyView2.swift
//  ViewDrawingWithCGContextLinesAndShapes
//
//  Created by Mazharul Huq on 7/24/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        
        let w = self.bounds.size.width
        
        con.move(to: CGPoint(x: w/8.0, y: 10.0))
        con.addLine(to: CGPoint(x: w/8.0 - 30, y: 60.0))
        con.addLine(to: CGPoint(x: w/8.0 + 30, y: 60.0))
        con.setFillColor(UIColor.red.cgColor)
        con.fillPath()
        drawRectangle(con: con)
        drawCircle(con: con)
        drawEllipse(con: con)
    }
    
    func drawRectangle(con:CGContext){
        let w = self.bounds.size.width
        con.move(to: CGPoint(x: w/2.0, y: 10.0))
        con.addRect(CGRect(x: w/2.0, y: 10.0, width: 150.0, height: 100.0))
        con.setStrokeColor(UIColor.blue.cgColor)
        con.strokePath()
    }
    
    func drawCircle(con:CGContext){
        let w = self.bounds.size.width
        con.addEllipse(in: CGRect(x: w/2.0 + 40.0, y: 20.0, width: 80.0, height: 80.0))
        con.setFillColor(UIColor.brown.cgColor)
        con.fillPath()
    }
    
    func drawEllipse(con:CGContext){
        let w = self.bounds.size.width
        let h = self.bounds.size.height
        con.addEllipse(in: CGRect(x: 20.0, y: h/2.0, width: w/2.0 - 40.0, height: h/2.0 - 20))
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setFillColor(UIColor.green.cgColor)
        con.drawPath(using: .fillStroke)
    }
    

}
