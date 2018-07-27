//
//  SecondViewController.swift
//  GradientDisplay
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var radialView: RadialView!
    var start = CGPoint(x: 0.0, y: 30.0)
    var end = CGPoint(x: 0.0, y: 0.0)
    var startRadius:CGFloat = 5.0
    var endRadius:CGFloat = 5.0
    var extOption = 0
    var width:CGFloat = 0.0
    var height:CGFloat = 0.0
    
    override func  viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        width = self.radialView.bounds.size.width
        height = self.radialView.bounds.size.height
        //endX = width
        self.end = CGPoint(x: width, y: 20.0)
        self.createDisplay()
        
    }
    
    func createDisplay()
    {
        self.radialView.setOptions(sP: self.start, eP: self.end, sRadius: self.startRadius, eRadius: self.endRadius, ext: self.extOption)
        self.radialView.setNeedsDisplay()
    }
    
    @IBAction func chooseStartX(_ sender: Any) {
        let slider:UISlider = sender as! UISlider
        self.start.x = width*CGFloat(slider.value)
        
        createDisplay()
    }
    
    @IBAction func chooseStartY(_ sender: Any) {
        let slider:UISlider = sender as! UISlider
        self.start.y = height*CGFloat(slider.value)
        createDisplay()
    }
    
    @IBAction func chooseEndX(_ sender: Any) {
        let slider:UISlider = sender as! UISlider
        self.end.x = width*CGFloat(slider.value)
        createDisplay()
    }
    
    @IBAction func chooseEndY(_ sender: Any) {
        let slider:UISlider = sender as! UISlider
        self.end.y = height*CGFloat(slider.value)
        createDisplay()
    }
    
    @IBAction func chooseStartRadius(_ sender: Any) {
        let slider:UISlider = sender as! UISlider
        self.startRadius = CGFloat(slider.value)
        createDisplay()
    }
    
    @IBAction func chooseEndRadius(_ sender: Any) {
        let slider:UISlider = sender as! UISlider
        self.endRadius = CGFloat(slider.value)
        createDisplay()
    }
    
    @IBAction func chooseExtendOption(_ sender: Any) {
        let seg: UISegmentedControl = sender as! UISegmentedControl
        let index:Int = seg.selectedSegmentIndex
        extOption = index
        createDisplay()
    }
    
}




