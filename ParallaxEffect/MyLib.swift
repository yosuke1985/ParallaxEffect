//
//  MyLib.swift
//  ParallaxEffect
//
//  Created by 中山 陽介 on 5/9/16.
//  Copyright © 2016 Yosuke Nakayama. All rights reserved.
//

import Foundation

open class ParallaxEffect:NSObject{
//    public class func start(){
//        print("MyLib start..")
//    }
    


    open class func addParallaxToView(_ vw: UIView) {
        let amount :Int = 10

        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        vw.addMotionEffect(group)
    }
    
    
}


