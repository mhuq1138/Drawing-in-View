//
//  MyView1.swift
//  CGPathLinesAndShapes
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
        let rectangle = CGPath(rect: CGRect(x: 20.0, y: 10.0, width: 75.0, height: 50.0), transform: nil)
        
        let roundedSquare = CGPath(roundedRect: CGRect(x: 20.0, y: 70.0, width: 75.0, height: 75.0), cornerWidth: 5.0, cornerHeight: 5.0, transform: nil)
        
        let circle = CGPath(ellipseIn: CGRect(x: 150.0, y: 10.0, width: 140.0, height: 140.0), transform: nil)
        
        con.addPath(rectangle)
        con.setFillColor(UIColor.red.cgColor)
        con.fillPath()
        
        con.addPath(roundedSquare)
        con.setFillColor(UIColor.green.cgColor)
        con.drawPath(using: .fillStroke)
        
        con.addPath(circle)
        con.setFillColor(UIColor.blue.cgColor)
        con.drawPath(using: .fillStroke)
    }


}
