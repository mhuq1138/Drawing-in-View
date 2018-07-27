//
//  ViewController.swift
//  CGImageDrawing
//
//  Created by Mazharul Huq on 7/24/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    
    var earth = UIImage(named: "large_earth")
    var earthLeft:CGImage?
    var earthRight:CGImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let earthCG = earth?.cgImage else{
            return
        }
        let size = CGSize(width: earthCG.width, height: earthCG.height)
        
        self.earthLeft = earthCG.cropping(to: CGRect(x: 0.0, y: 0.0, width: size.width/2.0, height: size.height))
        
        self.earthRight = earthCG.cropping(to: CGRect(x: size.width/2.0, y: 0.0, width: size.width/2.0, height: size.height))
        splitImage()
        coorectByFlipping()
        corrctByWrapping()
        
    }
    
    func splitImage(){
        
        guard let size = self.earth?.size else{
            return
        }
        
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 1.5*size.width, height: size.height))
        
        let image = renderer.image { context in
            let contextCG = context.cgContext
            contextCG.draw(earthLeft!, in: CGRect(x: 0.0, y: 0.0, width: size.width/2.0, height: size.height))
            
            contextCG.draw(earthRight!, in: CGRect(x: size.width/2.0 + 10.0, y: 0.0, width: size.width/2.0, height: size.height))
        }
        self.imageView1.image = image
        
    }
    
    func flip (_ im: CGImage) -> CGImage? {
        let sz = CGSize(width: CGFloat(im.width), height: CGFloat(im.height))
        let r = UIGraphicsImageRenderer(size:sz)
        return r.image { context in
            context.cgContext.draw(im, in: CGRect(x: 0, y: 0, width: sz.width, height: sz.height))
            }.cgImage
    }
    
    func coorectByFlipping(){
        guard let size = self.earth?.size else{
            return
        }
        
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 1.5*size.width, height: size.height))
        
        let image = renderer.image { context in
            let contextCG = context.cgContext
            contextCG.draw(flip(self.earthLeft!)!, in: CGRect(x: 0.0, y: 0.0, width: size.width/2.0, height: size.height))
            
            contextCG.draw(flip(self.earthRight!)!, in: CGRect(x: size.width/2.0 + 10.0, y: 0.0, width: size.width/2.0, height: size.height))
        }
        self.imageView2.image = image
        
    }
    
    func corrctByWrapping(){
        
        guard let size = self.earth?.size else{
            return
        }
        
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 1.5*size.width, height: size.height))
        
        let image = renderer.image { context in
            UIImage(cgImage: earthLeft!,
                    scale: (earth?.scale)!,
                    orientation: (earth?.imageOrientation)!).draw(at:CGPoint(x:0,y:0))
            UIImage(cgImage: earthRight!,
                    scale: (earth?.scale)!,
                    orientation: (earth?.imageOrientation)!).draw(at:CGPoint(x: size.width/2 + 10, y: 0))
            
        }
        self.imageView3.image = image
    }
    

}

