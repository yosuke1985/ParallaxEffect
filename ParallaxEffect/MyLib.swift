//
//  MyLib.swift
//  ParallaxEffect
//
//  Created by 中山 陽介 on 5/9/16.
//  Copyright © 2016 Yosuke Nakayama. All rights reserved.
//

import Foundation

public class ParallaxEffect:NSObject{
//    public class func start(){
//        print("MyLib start..")
//    }
    
    
    
    public class func addParallaxToView(vw: UIView) {
        let amount = 25
        
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        vw.addMotionEffect(group)
    }
    
    
}


