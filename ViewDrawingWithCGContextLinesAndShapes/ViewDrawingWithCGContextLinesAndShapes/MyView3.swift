//
//  MyView3.swift
//  ViewDrawingWithCGContextLinesAndShapes
//
//  Created by Mazharul Huq on 7/24/18.
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
        con.setStrokeColor(UIColor.blue.cgColor)
        con.setFillColor(UIColor.red.cgColor)
        //Draw stroked rectangel
        con.stroke(CGRect(x: 20, y: 20, width: w/3.0, height: h/3.0))
        //Draw filled rectangle
        con.fill(CGRect(x: 20, y: h/2.0, width: w/3.0, height: h/3.0))
        //Draw filled circle
        con.setFillColor(UIColor.blue.cgColor)
        con.fillEllipse(in: CGRect(x: w/2.0, y: 20, width: w/3.0, height: w/3.0))
    }
    

}
