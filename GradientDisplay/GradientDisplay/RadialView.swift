//
//  RadialView.swift
//  GradientDisplay
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class RadialView: UIView {
    var startPoint:CGPoint!
    var endPoint:CGPoint!
    var startRadius:CGFloat!
    var endRadius:CGFloat!
    var extendOption:Int!
    
    func setOptions(sP:CGPoint, eP:CGPoint,sRadius:CGFloat,eRadius:CGFloat, ext:Int){
        self.startPoint = sP
        self.endPoint = eP
        self.startRadius = sRadius
        self.endRadius = eRadius
        extendOption = ext
    }
    
    
    override func draw(_ rect: CGRect) {
        //Get frame width and height to be used in drawing lines
        let w:CGFloat = self.frame.size.width
        let h:CGFloat = self.frame.size.height
        
        //Create the rect for the f\gradient display
        let rect:CGRect = CGRect(x: 5.0, y: 5.0, width: w, height: h)
        //Set graphics context
        guard let con = UIGraphicsGetCurrentContext() else{
            return
        }
        
        con.addRect(rect)//Add the rect to CGContext
        con.clip() //If this is omitted the gradient will spread all over
        //the view
        
        // draw the gradient
        // Number of locations of colors. Minimum is 2 for start and end colors.
        // We have chosen one intermediate point in the middle
        let locs:[CGFloat] = [0.0, 0.5, 1.0 ]
        //One row for each location: four numbers for RGB and alpha
        let colors:[CGFloat] = [
            1.0,0.0,0.0,0.8, // starting color, red with alpha 0.8
            0.0,1.0,0.0,1.0, // intermediate color, green with alpha 1.0
            0.0,0.0,1.0,0.8 // ending color, blue with alpha 0.8
        ]
        let sp:CGColorSpace = CGColorSpaceCreateDeviceRGB() //Gives a RGB color space
        guard let grad:CGGradient = CGGradient (colorSpace: sp, colorComponents: colors, locations: locs, count: 3) else{
            return
        }
        
        
        switch(extendOption)
        {
            
        case 0:
            //Gradient with no extension
            
            con.drawRadialGradient(grad, startCenter: self.startPoint, startRadius: self.startRadius, endCenter: self.endPoint, endRadius: self.endRadius, options:[])
            
        case 1:
            //Gradient with extension before start location
            con.drawRadialGradient(grad, startCenter: self.startPoint, startRadius: self.startRadius, endCenter: self.endPoint, endRadius: self.endRadius, options:.drawsBeforeStartLocation)
            
        case 2:
            con.drawRadialGradient(grad, startCenter: self.startPoint, startRadius: self.startRadius, endCenter: self.endPoint, endRadius: self.endRadius, options:.drawsAfterEndLocation)
            
        case 3:
            //Gradient with both extension
            con.drawRadialGradient(grad, startCenter: self.startPoint, startRadius: self.startRadius, endCenter: self.endPoint, endRadius: self.endRadius, options:[.drawsBeforeStartLocation, .drawsAfterEndLocation])
        default:
            break
        }
    }
    
    
}

