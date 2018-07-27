//
//  MyView3.swift
//  GraphicsContextTransforms
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView3: UIView {
    var arrow:UIImage!
    
    func initialize(){
        self.arrow = self.drawArrow()
    }
    
    func drawArrow()->UIImage{
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width:300,height:100), false, 0.0)
        
        // Drawing vertical arrow using CGContext
        let con = UIGraphicsGetCurrentContext()!
        // snip a triangle out of the shaft by drawing in Clear blend mode
        con.move(to: CGPoint(x: 10, y: 100))
        con.addLine(to: CGPoint(x: 20, y: 90))
        con.addLine(to: CGPoint(x: 30, y: 100))
        con.closePath()
        con.addRect(con.boundingBoxOfClipPath)
        con.clip(using: .evenOdd)
        
        // draw a black (by default) vertical line, the shaft of the arrow
        con.move(to: CGPoint(x: 20, y: 100))
        con.addLine(to: CGPoint(x: 20, y: 19))
        con.setLineWidth(20)
        con.strokePath()
        
        // draw a red triangle, the point of the arrow
        con.setFillColor(UIColor.red.cgColor)
        con.move(to: CGPoint(x: 0, y: 25))
        con.addLine(to: CGPoint(x: 20, y: 0))
        con.addLine(to: CGPoint(x: 40, y: 25))
        con.fillPath()
        let im:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        return im
    }
    
    override func draw(_ rect: CGRect)
    {
        let con:CGContext = UIGraphicsGetCurrentContext()!
        con.saveGState()
        //Draw the arrow
        arrow.draw(at: CGPoint(x: 0,y: 0))
        
        for _ in 0..<3{
            //Draw arrow after each rotation of the context
            con.translateBy(x: 20, y: 100)
            con.rotate(by: 30 * .pi/180.0)
            con.translateBy(x: -20, y: -100)
            arrow.draw(at: CGPoint(x: 0,y: 0))
        }
        
        //Translate and draw the arrow
        con.restoreGState()
        con.translateBy(x: 260.0,y: 10.0)
        con.rotate(by: (45.0 * 3.14) / 180.0)
        arrow.draw(at: CGPoint(x: 0,y: 0))
        
        //Translate and scale before drawing arrow.
        con.translateBy(x: 50.0,y: 10.0)
        con.scaleBy(x: 0.45,y: 0.55)
        arrow.draw(at: CGPoint(x: 0,y: 0))
        
    }
    

}
