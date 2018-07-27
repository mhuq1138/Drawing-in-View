//
//  LinearView.swift
//  GradientDisplay
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class LinearView: UIView {
    var startPoint:CGPoint!
    var endPoint:CGPoint!
    var extendOption:Int!
    
    func setOptions(sP:CGPoint, eP:CGPoint,ext:Int){
        startPoint = sP
        endPoint = eP
        extendOption = ext
    }
    
    
    override func draw(_ rect: CGRect) {
        //Get frame width and height to be used in drawing lines
        let w:CGFloat = self.frame.size.width
        let h:CGFloat = self.frame.size.height
        
        //Create the rect for the gradient display
        let rect:CGRect = CGRect(x: 0.0, y: 0.0, width: w, height: h)
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
            con.drawLinearGradient(grad, start: startPoint, end: endPoint,options: [])
            
        case 1:
            //Gradient with extension before start location
            con.drawLinearGradient(grad, start: startPoint, end: endPoint,options: CGGradientDrawingOptions.drawsBeforeStartLocation)
            
        case 2:
            con.drawLinearGradient(grad, start: startPoint, end: endPoint,options: CGGradientDrawingOptions.drawsAfterEndLocation)
            
        case 3:
            //Gradient with both extension
            con.drawLinearGradient(grad, start: startPoint, end: endPoint,options: [CGGradientDrawingOptions.drawsBeforeStartLocation,CGGradientDrawingOptions.drawsAfterEndLocation])
        default:
            break
        }
    }
    
    
}
