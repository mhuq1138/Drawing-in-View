//
//  ViewController.swift
//  UIImageDrawing
//
//  Created by Mazharul Huq on 7/23/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageViewAt: UIImageView!
    @IBOutlet var imageViewInRect: UIImageView!
    @IBOutlet var imageViewTile: UIImageView!
    
    var earth = UIImage(named: "small_earth")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        drawAtPoint()
        drawInRect()
        drawTile()
    }
    
    func drawImage()->UIImage
    {
        let r = UIGraphicsImageRenderer(size:CGSize(width: 100, height: 100))
        let image = r.image { _ in
            let bottomPath: UIBezierPath = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 50, startAngle: 0.0, endAngle: .pi, clockwise: true)
            UIColor.green.setFill()
            bottomPath.fill()
            let topPath: UIBezierPath = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 50, startAngle: .pi, endAngle: .pi*2, clockwise: true)
            UIColor.red.setFill()
            topPath.fill()
        }
        return image
    }
    
    func croppedEarth()->UIImage?{
        guard let size = self.earth?.size else{
            return nil
        }
        let render = UIGraphicsImageRenderer(size: CGSize(width: (size.width)/2, height: (size.height) ))
        let image = render.image{ _ in
            self.earth?.draw(at: CGPoint(x: -size.width/2.0, y: 0.0))
        }
        return image
    }
    
    func drawAtPoint(){
        let size = self.imageViewAt.bounds.size
        let render = UIGraphicsImageRenderer(size: CGSize(width: size.width - 30, height: size.height - 30))
        let image = render.image{ _ in
            drawImage().draw(at: CGPoint(x: 10, y: 10))
            drawImage().draw(at: CGPoint(x: 120, y: 10))
            
            earth?.draw(at: CGPoint(x: 150, y: 30), blendMode: .luminosity, alpha: 0.8)
            drawImage().draw(at: CGPoint(x: size.width - 80, y: 20))
            
        }
        self.imageViewAt.image = image
    }
    
    func drawInRect(){
        let size = self.imageViewInRect.bounds.size
        let render = UIGraphicsImageRenderer(size: CGSize(width: size.width - 30, height: size.height - 30))
        let image = render.image{ _ in
            earth?.draw(in: CGRect(x: 10, y: 10, width: 150, height: 100))
            croppedEarth()?.draw(at: CGPoint(x: 170, y: 30))
            drawImage().draw(in: CGRect(x: 70, y: 30, width: 30, height: 30), blendMode: .multiply, alpha: 0.6)
            earth?.draw(in: CGRect(x: size.width - 80, y:  -50, width: 100, height: 100))
            earth?.draw(in: CGRect(x: size.width - 80, y: size.height - 80, width: 100, height: 100))
            
        }
        self.imageViewInRect.image = image
    }

    func drawTile(){
        let size = self.imageViewTile.bounds.size
        let render = UIGraphicsImageRenderer(size: CGSize(width: size.width - 5, height: size.height - 5))
        let image = render.image{ _ in
            earth?.drawAsPattern(in: CGRect(x: 5, y: 5, width: size.width - 10, height: size.height - 10))
            
        }
        self.imageViewTile.image = image
    }
}

