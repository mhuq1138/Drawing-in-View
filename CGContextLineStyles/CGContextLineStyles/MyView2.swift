//
//  MyView2.swift
//  CGContextLineStyles
//
//  Created by Mazharul Huq on 7/25/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        let w = self.bounds.size.width
        con.setLineWidth(30.0)
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setLineCap(.butt)
        con.move(to: CGPoint(x: 30.0, y: 30.0))
        con.addLine(to: CGPoint(x: w - 30.0, y: 30.0))
        con.strokePath()
        
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineCap(.round)
        con.move(to: CGPoint(x: 30.0, y: 70.0))
        con.addLine(to: CGPoint(x: w - 30.0, y: 70.0))
        con.strokePath()
        
        con.setStrokeColor(UIColor.brown.cgColor)
        con.setLineCap(.square)
        con.move(to: CGPoint(x: 30.0, y: 110.0))
        con.addLine(to: CGPoint(x: w - 30.0, y: 110.0))
        con.strokePath()
    }
}
