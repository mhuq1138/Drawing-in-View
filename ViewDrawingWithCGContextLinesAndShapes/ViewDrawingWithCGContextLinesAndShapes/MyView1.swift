//
//  MyView1.swift
//  ViewDrawingWithCGContextLinesAndShapes
//
//  Created by Mazharul Huq on 7/24/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {

    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        
        let w = self.bounds.size.width
        let h = self.bounds.size.height
        //Horizontal red line
        con.setStrokeColor(UIColor.red.cgColor)
        con.move(to: CGPoint(x: 5.0, y: 20.0))
        con.addLine(to: CGPoint(x: w/2.0 - 20.0, y: 20.0))
        con.strokePath()
        //Vertical green line
        con.move(to: CGPoint(x: w/2.0 - 20.0, y: 20.0))
        con.setStrokeColor(UIColor.green.cgColor)
        con.addLine(to: CGPoint(x: w/2.0 - 20.0, y: h/2.0 ))
        con.strokePath()
        //Slanting blue line
        con.move(to: CGPoint(x: w/2.0 - 20.0, y: h/2.0))
        con.setStrokeColor(UIColor.blue.cgColor)
        con.addLine(to: CGPoint(x: 5.0, y: 20.0 ))
        con.strokePath()
        
        drawTicTacToe(con: con)
    }
    
    func drawTicTacToe(con:CGContext){
        let w = self.bounds.size.width
        let h = self.bounds.size.height
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setLineWidth(2.0)
        con.move(to: CGPoint(x: w/2.0, y: h/2.0 - 10.0))
        con.addLine(to: CGPoint(x: w/2.0 + 100.0, y: h/2.0 - 10.0))
        con.move(to: CGPoint(x: w/2.0, y: h/2.0 + 10.0))
        con.addLine(to: CGPoint(x: w/2.0 + 100.0, y: h/2.0 + 10.0))
        
        con.move(to: CGPoint(x: w/2.0 + 40.0, y: h/2.0 - 50.0))
        con.addLine(to: CGPoint(x: w/2.0 + 40.0, y: h/2.0 + 50.0))
        con.move(to: CGPoint(x: w/2.0 + 60.0, y: h/2.0 - 50.0))
        con.addLine(to: CGPoint(x: w/2.0 + 60.0, y: h/2.0 + 50.0))
        con.strokePath()
    }
}
