//
//  MyView1.swift
//  CGContextLineStyles
//
//  Created by Mazharul Huq on 7/25/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {
    
    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        let w = self.bounds.size.width
        con.setLineWidth(5.0)
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setLineDash(phase: 0.0, lengths: [10.0])
        con.move(to: CGPoint(x: 20.0, y: 20.0))
        con.addLine(to: CGPoint(x: w - 20.0, y: 20.0))
        con.strokePath()
        
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineDash(phase: 3.0, lengths: [7.0,15.0])
        con.move(to: CGPoint(x: 20.0, y: 60.0))
        con.addLine(to: CGPoint(x: w - 20.0, y: 60.0))
        con.strokePath()
        
        con.setStrokeColor(UIColor.brown.cgColor)
        con.setLineDash(phase: 0.0, lengths: [10.0,3.0,5.0,10.0])
        con.move(to: CGPoint(x: 20.0, y: 100.0))
        con.addLine(to: CGPoint(x: w - 20.0, y: 100.0))
        con.strokePath()
    }
}
