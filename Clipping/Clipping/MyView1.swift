//
//  MyView1.swift
//  Clipping
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
        con.setFillColor(UIColor.blue.cgColor)
        
        con.addRect(CGRect(x: 60, y: 40, width: 160, height: 140))
        con.addRect(CGRect(x: 100, y: 75, width: 80, height: 70))
        con.addRect(con.boundingBoxOfClipPath)
        con.clip(using: .evenOdd)
        
        con.setLineWidth(5)
        con.move(to: CGPoint(x: 20, y: 50))
        con.addLine(to: CGPoint(x: 250, y: 50))
        con.setStrokeColor(UIColor.blue.cgColor)
        con.move(to: CGPoint(x: 20, y: 90))
        con.addLine(to: CGPoint(x: 250, y: 90))
        con.strokePath()
        
        con.addRect(CGRect(x: 20, y: 120, width: 250, height: 100))
        con.setFillColor(UIColor.red.cgColor)
        con.fillPath()
        
    }

}
