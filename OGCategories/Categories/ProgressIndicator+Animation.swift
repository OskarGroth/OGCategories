//
//  NSProgressIndicator+Animation.swift
//  OGCategories
//
//  Created by Oskar Groth on 2017-05-05.
//  Copyright © 2017 Oskar Groth. All rights reserved.
//

import Foundation
import Cocoa

public class ProgressBarAnimation : NSAnimation {
    
    let indicator : NSProgressIndicator
    let initialValue : Double
    let newValue : Double
    
    init(_ progressIndicator: NSProgressIndicator, newValue: Double) {
        self.indicator = progressIndicator
        self.initialValue = progressIndicator.doubleValue
        self.newValue = newValue
        super.init(duration: 0.2, animationCurve: .easeIn)
        self.animationBlockingMode = .nonblockingThreaded
    }
    
    required public init?(coder aDecoder: NSCoder) {
        indicator = NSProgressIndicator()
        initialValue = 0
        newValue = 0
        super.init(coder: aDecoder)
    }
    
    override public var currentProgress : NSAnimation.Progress {
        didSet {
            let delta = self.newValue - self.initialValue
            
            self.indicator.doubleValue = self.initialValue + (delta * Double(currentProgress))
        }
    }
}

public extension NSProgressIndicator {
    
    public func animateToDoubleValue(value: Double) -> NSAnimation {
        let animation = ProgressBarAnimation(self, newValue: value)
        animation.start()
        return animation
    }
}
