//
//  Extension.swift
//  TRCustomViews
//
//  Created by kerimcaglar on 3.11.2018.
//  Copyright © 2018 kerimcaglar. All rights reserved.
//

import UIKit

extension UIView{
    func rotate(duration:CFTimeInterval=2){
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(Double.pi * 2)
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.duration = duration
        rotateAnimation.repeatCount = Float.infinity
        self.layer.add(rotateAnimation, forKey: nil)
    }
    func jump(y:CGFloat){
        var frame:CGRect = self.frame
        frame.origin.y = y
        self.frame = frame
    }
}
