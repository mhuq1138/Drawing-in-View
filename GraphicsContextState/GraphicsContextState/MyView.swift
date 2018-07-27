//
//  MyView.swift
//  GraphicsContextState
//
//  Created by Mazharul Huq on 7/25/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView: UIView {
    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setLineWidth(4.0)
        con.move(to: CGPoint(x: 20.0, y: 40.0))
        con.addLine(to: CGPoint(x: 300.0, y: 40.0))
        con.strokePath()
        con.saveGState()
        
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineWidth(7.0)
        con.move(to: CGPoint(x: 20.0, y: 80.0))
        con.addLine(to: CGPoint(x: 300.0, y: 80.0))
        con.strokePath()
        con.saveGState()
        
        con.setStrokeColor(UIColor.brown.cgColor)
        con.setLineWidth(10.0)
        con.move(to: CGPoint(x: 20.0, y: 120.0))
        con.addLine(to: CGPoint(x: 300.0, y: 120.0))
        con.strokePath()
        
        con.restoreGState()
        con.move(to: CGPoint(x: 20.0, y: 160.0))
        con.addLine(to: CGPoint(x: 300.0, y: 160.0))
        con.strokePath()
        
        con.restoreGState()
        con.move(to: CGPoint(x: 20.0, y: 200.0))
        con.addLine(to: CGPoint(x: 300.0, y: 200.0))
        con.strokePath()
        
    }

}
