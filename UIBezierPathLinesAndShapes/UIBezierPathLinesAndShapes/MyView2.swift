//
//  MyView2.swift
//  UIBezierPathLinesAndShapes
//
//  Created by Mazharul Huq on 7/26/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {

   
    override func draw(_ rect: CGRect) {
        var p = UIBezierPath(rect: CGRect(x: 10, y: 10, width: 100, height: 80))
        UIColor.blue.setStroke()
        p.lineWidth = 2.0
        p.stroke()
        
        p = UIBezierPath(ovalIn: CGRect(x: 150, y: 10, width: 50, height: 50))
        UIColor.red.setFill()
        p.lineWidth = 3.0
        p.stroke()
        p.fill(with: .colorBurn, alpha: 0.9)
        
        p = UIBezierPath(rect: CGRect(x: 10, y: 110, width: 100, height: 50))
        let q = UIBezierPath(rect: CGRect(x: 50, y: 140, width: 100, height: 50))
        q.lineWidth = 15.0
        p.append(q)
        UIColor.red.set()
        p.lineWidth = 6.0
        p.stroke()
        UIColor.blue.set()
        p.fill()
        
        p = UIBezierPath(ovalIn: CGRect(x: 180, y: 70, width: 150, height: 50))
        UIColor.blue.set()
        p.lineWidth = 4.0
        let r = UIBezierPath(ovalIn: CGRect(x: 220, y: 90, width: 80, height: 80))
        r.append(p)
        r.lineWidth = 10.0
        UIColor.blue.set()
        r.stroke()
        UIColor.green.set()
        r.fill()
        
        
    }
    

}
