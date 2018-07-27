//
//  MyView2.swift
//  GraphicsContextTransforms
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

    
    override func draw(_ rect: CGRect) {
        let con:CGContext = UIGraphicsGetCurrentContext()!
        //
        let path:CGMutablePath = CGMutablePath()
        //Create rectangle of size (30,80) at (10,10)
        let rectangle:CGRect = CGRect(x: 10.0,y: 10.0,width: 30.0,height: 80.0)
        con.saveGState()
        path.addRect(rectangle)
        con.addPath(path)//Add path to context
        
        
        con.translateBy(x: 60.0,y: 0.0)
        con.addPath(path)//Add path to context
        con.saveGState()
        con.restoreGState()
        
        
        con.translateBy(x: 120.0,y: 0.0)
        con.rotate(by: (45.0 * 3.14) / 180.0)
        con.addPath(path)//Add path to context
        
        con.restoreGState()
        con.translateBy(x: 220.0,y: 50.0)
        con.scaleBy(x: 0.45,y: 0.55)
        con.addPath(path)
        
        //Set fill color
        UIColor(red: 0.80, green: 0.60, blue: 0.20, alpha: 1.0).setFill()
        UIColor.blue.setStroke()//Set stroke color
        
        con.setLineWidth(5.0) //Set line width
        //Fill and stroke path
        con.drawPath(using: CGPathDrawingMode.fillStroke)
    }
    


}
