//
//  ViewController.swift
//  Shadows
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myView: MyView!
    
    var width:CGFloat = 5.0
    var height:CGFloat = 5.0
    var blur:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setViewDraw()
    }
    
    func setViewDraw(){
        self.myView.initialize(width: self.width, height: self.height, blur: self.blur)
        self.myView.setNeedsDisplay()
    }
    
    @IBAction func widthChanged(_ sender: Any) {
        let slider = sender as! UISlider
        self.width = CGFloat(slider.value)
        setViewDraw()
    }
    
    @IBAction func heightChanged(_ sender: Any) {
        let slider = sender as! UISlider
        self.height = CGFloat(slider.value)
        setViewDraw()
    }
    
    @IBAction func blurChanged(_ sender: Any) {
        let slider = sender as! UISlider
        self.blur = CGFloat(slider.value)
        setViewDraw()
    }
}

