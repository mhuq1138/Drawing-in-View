//
//  MyView3.swift
//  CGPathLinesAndShapes
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
        
        let redPath = CGMutablePath()
        redPath.addRect(CGRect(x: 20.0, y: 20.0, width: 100.0, height: 50))
        con.addPath(redPath)
        con.setStrokeColor(UIColor.red.cgColor)
        con.strokePath()
        
        let circlePath = CGMutablePath()
        circlePath.addEllipse(in: CGRect(x: 20.0, y: 76.0, width: 80.0, height: 80.0))
        con.addPath(circlePath)
        con.setStrokeColor(UIColor.red.cgColor)
        con.setFillColor(UIColor.blue.cgColor)
        con.drawPath(using: .fillStroke)
        
        let rect1 = CGRect(x: 150.0, y: 20.0, width: 150.0, height: 80.0)
        let rect2 = CGRect(x: 170.0, y: 50.0, width: 150.0, height: 80.0)
        let multiPath = CGMutablePath()
        multiPath.addRects([rect1,rect2])
        con.addPath(multiPath)
        con.setStrokeColor(UIColor.brown.cgColor)
        con.setFillColor(UIColor.red.cgColor)
        con.setLineWidth(4.0)
        con.drawPath(using: .fillStroke)
        
    }
    


}
