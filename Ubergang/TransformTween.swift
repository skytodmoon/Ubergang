//
//  TransformTween.swift
//  Tween
//
//  Created by RF on 14/01/16.
//  Copyright © 2016 Robin Falko. All rights reserved.
//

import Foundation
import UIKit

public class TransformTween: UTween<CGAffineTransform> {
    
    public convenience init() {
        let id = "\(__FILE__)_\(random() * 1000)_update"
        self.init(id: id)
    }
    
    public override init(id: String) {
        super.init(id: id)
    }
    
    override func loop() {
        super.loop()
    }
    
    override func compute(value: Double) -> CGAffineTransform {
        super.compute(value)
        
        var currentValue = current()
        currentValue.tx = from.tx + (to.tx - from.tx) * CGFloat(value)
        currentValue.ty = from.ty + (to.ty - from.ty) * CGFloat(value)
        
        return currentValue
    }
}