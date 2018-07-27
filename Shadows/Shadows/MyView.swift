//
//  MyView.swift
//  Shadows
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView: UIView {
    var width:CGFloat!
    var height:CGFloat!
    var blur:CGFloat!
    var initial = true
    
    func initialize(width:CGFloat, height:CGFloat,blur:CGFloat){
        self.width = width
        self.height = height
        self.blur = blur
        
    }
    
    override func draw(_ rect: CGRect) {
        if initial{
            initialize(width:5.0, height:5.0,blur:0.0)
            initial = false
        }
        
        let currentContext:CGContext = UIGraphicsGetCurrentContext()!
        
        currentContext.setShadow(offset: CGSize(width: self.width, height: self.height),blur: self.blur,color: UIColor.gray.cgColor)
        
        let path:CGMutablePath = CGMutablePath()
        
        let firstRect:CGRect = CGRect(x: 20.0,y: 20.0,width: 100.0,height: 30.0)
        path.addRect(firstRect)
        currentContext.addPath(path)
        for _ in 0..<3{
            currentContext.translateBy(x: 30, y: 20)
            path.addRect(firstRect)
            currentContext.addPath(path)
        }
        
        currentContext.addPath(path);
        UIColor (red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0).setFill()
        currentContext.drawPath(using: CGPathDrawingMode.fill)
        
        let path1:CGMutablePath = CGMutablePath()
        currentContext.setShadow(offset: CGSize(width: self.width, height: self.height),blur: self.blur,color: UIColor.blue.cgColor)
        let secondRect:CGRect = CGRect(x: 50.0,y: 80.0,width: 50.0,height: 20.0)
        path1.addRect(secondRect)
        currentContext.addPath(path1)
        for _ in 0..<3{
            currentContext.translateBy(x: 20, y: 20)
            path.addRect(firstRect)
            currentContext.addPath(path1)
        };
        UIColor.purple.setFill()
        currentContext.drawPath(using: CGPathDrawingMode.fill);
    }
    
    
}

