//
//  MyView1.swift
//  PatternDemo
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView1: UIView {
    var width:CGFloat = 8.0
    var height:CGFloat = 8.0
    
    func setup(w:CGFloat,h:CGFloat){
        self.width = w
        self.height = h
    }
    
    override func draw(_ rect: CGRect) {
        //Create a small tile image
        let r = UIGraphicsImageRenderer(size: CGSize(width: self.width, height: self.height))
        let stripes = r.image{ con in
            let imcon = con.cgContext
            imcon.setFillColor(UIColor.red.cgColor)
            imcon.fill(CGRect(x: 0,y: 0,width: 8,height: 4))
            
            imcon.setFillColor(UIColor.blue.cgColor)
            imcon.fill(CGRect(x: 0,y: 4,width: 8,height: 4))
        }
        
        //Use the small image above as pattern
        let stripesPattern = UIColor(patternImage:stripes)
        stripesPattern.setFill()
        stripesPattern.setStroke()
        
        let p = UIBezierPath()
        p.addArc(withCenter: CGPoint(x: 250, y: 80), radius: 60, startAngle: 0, endAngle: .pi*2.0, clockwise: true)
        p.fill()
        let q = UIBezierPath()
        q.lineWidth = 16.0
        q.move(to: CGPoint(x: 20, y: 160))
        q.addLine(to: CGPoint(x: 200, y: 160))
        q.stroke()
        
    }
    
    
}

