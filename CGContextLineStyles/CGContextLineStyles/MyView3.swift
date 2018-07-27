//
//  MyView3.swift
//  CGContextLineStyles
//
//  Created by Mazharul Huq on 7/25/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView3: UIView {

    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        let w = self.bounds.size.width
        let h = self.bounds.size.height
        con.setLineWidth(20.0)
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setLineJoin(.miter)
        con.move(to: CGPoint(x: 30.0, y: 30.0))
        con.addLine(to: CGPoint(x: w - 30.0, y: 30.0))
        con.addLine(to: CGPoint(x: w - 30.0, y: h - 20.0))
        con.strokePath()
        
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineJoin(.bevel)
        con.move(to: CGPoint(x: 30.0, y: 60.0))
        con.addLine(to: CGPoint(x: w - 60.0, y: 60.0))
        con.addLine(to: CGPoint(x: w - 60.0, y: h - 20.0))
        con.strokePath()
        
        con.setStrokeColor(UIColor.brown.cgColor)
        con.setLineJoin(.round)
        con.move(to: CGPoint(x: 30.0, y: 90.0))
        con.addLine(to: CGPoint(x: w - 90.0, y: 90.0))
        con.addLine(to: CGPoint(x: w - 90.0, y: h - 20.0))
        con.strokePath()
    }

}
