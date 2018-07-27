//
//  MyView.swift
//  SizeClassAndAssetCatalog
//
//  Created by Mazharul Huq on 7/19/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

class MyView: UIView {
    var image:UIImage!
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if self.traitCollection != previousTraitCollection{
            self.setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        if var im = self.image {
            if let asset = self.image.imageAsset {
                let tc = self.traitCollection
                im = asset.image(with: tc)
            }
            im.draw(at: CGPoint.zero)
        }
    }
}
