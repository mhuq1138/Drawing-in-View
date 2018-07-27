//
//  MyView1.swift
//  GraphicsContextTransforms
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else{
            return
        }
        let path = CGMutablePath()
        //Add a rectangle to the path
        let rectangle = CGRect(x: 10.0, y: 10.0, width: 20.0, height: 100.0)
        path.addRect(rectangle)
        
        //Translate context 50 points right and 0 points down
        //Origin of the context shifts to (50,0)
        let transform1 = CGAffineTransform(translationX: 50, y: 0)
        //Add rectangle to path with transform
        //Does not affect already drawn path
        path.addRect(rectangle, transform: transform1)
        
        //Combine translation with rotation
        var transform2 = CGAffineTransform(translationX: 180, y: 0)
        transform2 = transform2.rotated(by: 45.0 * .pi/180)
        //Add rectangle to path with transform
        path.addRect(rectangle, transform: transform2)
        
        //Combine translation with scale transformation of
        //the context
        var transform3 = CGAffineTransform(translationX: 200, y: 0)
        transform3 = transform3.scaledBy(x: 1.3, y: 0.80)
        //Add rectangle to path with transform
        path.addRect(rectangle, transform: transform3)
        
        //Add path to context
        context.addPath(path)
        //Set fill color
        UIColor(red: 0.80, green: 0.30, blue: 0.20, alpha: 1.0).setFill()
        UIColor.blue.setStroke()
        context.setLineWidth(2.0); //Set line width
        //Stroke and fill path
        context.drawPath(using: CGPathDrawingMode.fillStroke)
    }
    


}
