//
//  MyView2.swift
//  PatternDemo
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView2: UIView {
    var width:CGFloat = 8.0
    var height:CGFloat = 8.0
    
    func setup(w:CGFloat,h:CGFloat){
        self.width = w
        self.height = h
    }
    
    override func draw(_ rect: CGRect) {
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        guard let sp = CGColorSpace(patternBaseSpace: nil) else{
            return
        }
        con.setFillColorSpace(sp)
        let drawStripes : CGPatternDrawPatternCallback = {
            _, con in
            con.setFillColor(UIColor.red.cgColor)
            con.fill(CGRect(x: 0,y: 0,width: 8,height: 4))
            con.setFillColor(UIColor.blue.cgColor)
            con.fill(CGRect(x: 0,y: 4,width: 8,height: 4))
        }
        var callbacks = CGPatternCallbacks(
            version: 0, drawPattern: drawStripes, releaseInfo: nil)
        guard let patt = CGPattern(info: nil, bounds: CGRect(x: 0,y: 0,width: self.width,height: self.height),
                                   matrix: .identity,
                                   xStep: self.width, yStep: self.height,
                                   tiling: .constantSpacingMinimalDistortion,
                                   isColored: true, callbacks: &callbacks) else{
                                    return
        }
        
        var alph : CGFloat = 1.0
        con.setFillPattern(patt, colorComponents: &alph)
        con.addEllipse(in: CGRect(x: 230, y: 40, width: 120, height: 120))
        con.fillPath()
        
        con.setStrokeColorSpace(sp)
        
        con.setLineWidth(16.0)
        con.setStrokePattern(patt, colorComponents: &alph)
        con.move(to: CGPoint(x: 20, y: 120))
        con.addLine(to: CGPoint(x: 200, y: 120))
        con.strokePath()
        
    }
    
    
}

