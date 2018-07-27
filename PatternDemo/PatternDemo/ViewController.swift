//
//  ViewController.swift
//  PatternDemo
//
//  Created by Mazharul Huq on 7/27/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var topView: MyView1!
    @IBOutlet var bottomView: MyView2!
    
    var topWidth:CGFloat = 8.0
    var topHeight:CGFloat = 8.0
    var bottomWidth:CGFloat = 8.0
    var bottomHeight:CGFloat = 8.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupTopView(){
        self.topView.setup(w: self.topWidth, h: self.topHeight)
        self.topView.setNeedsDisplay()
    }
    
    func setupBottomView(){
        self.bottomView.setup(w: self.bottomWidth, h: self.bottomHeight)
        self.bottomView.setNeedsDisplay()
    }
    
    @IBAction func topWidthChanged(_ sender: Any) {
        let seg = sender as! UISegmentedControl
        self.topWidth = CGFloat(seg.selectedSegmentIndex + 1)*4.0
        setupTopView()
    }
    
    @IBAction func topHeightChanged(_ sender: Any) {
        let seg = sender as! UISegmentedControl
        self.topHeight = CGFloat(seg.selectedSegmentIndex + 1)*4.0
        setupTopView()
    }
    
    @IBAction func bottomWidthChanged(_ sender: Any) {
        let seg = sender as! UISegmentedControl
        self.bottomWidth = CGFloat(seg.selectedSegmentIndex + 1)*4.0
        setupBottomView()
    }
    
    @IBAction func bottomHeightChanged(_ sender: Any) {
        let seg = sender as! UISegmentedControl
        self.bottomHeight = CGFloat(seg.selectedSegmentIndex + 1)*4.0
        setupBottomView()
    }
    
}

