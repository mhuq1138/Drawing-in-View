//
//  MyView2.swift
//  CGPathLinesAndShapes
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
        let redPath = createPath(startPoint: CGPoint(x: 20.0, y: 20.0), endPoint: CGPoint(x: w - 20.0, y: 20.0))
        con.setStrokeColor(UIColor.red.cgColor)
        con.setLineWidth(3.0)
        con.addPath(redPath)
        con.strokePath()
        
        let bluePath = createPath(startPoint: CGPoint(x: 20.0, y: 40.0), endPoint: CGPoint(x: w - 40.0, y: 40.0))
        bluePath.addLine(to: CGPoint(x: w - 40.0, y: 120.0))
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setLineWidth(10.0)
        con.setLineJoin(.bevel)
        con.addPath(bluePath)
        con.strokePath()
        
    }
    
    func createPath(startPoint:CGPoint,endPoint:CGPoint)-> CGMutablePath{
        let path = CGMutablePath()
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        return path
    }

}
