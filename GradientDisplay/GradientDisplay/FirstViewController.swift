//
//  FirstViewController.swift
//  GradientDisplay
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var linearView: LinearView!
    var start = CGPoint(x: 0.0, y: 0.0)
    var end = CGPoint(x: 0.0, y: 0.0)
    var extOption = 0
    var width:CGFloat = 0.0
    var height:CGFloat = 0.0
    
    override func  viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        width = self.linearView.bounds.size.width
        height = self.linearView.bounds.size.height
        //endX = width
        self.end = CGPoint(x: width, y: 0.0)
        self.createDisplay()
        
    }
    
    func createDisplay()
    {
        self.linearView.setOptions(sP: start, eP: end, ext: extOption)
        self.linearView.setNeedsDisplay()
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
    
    @IBAction func chooseExtendOption(_ sender: Any) {
        let seg: UISegmentedControl = sender as! UISegmentedControl
        let index:Int = seg.selectedSegmentIndex
        extOption = index
        createDisplay()
    }
    
}

