//
//  NSTextField+Animations.swift
//  OGCategories
//
//  Created by Oskar Groth on 2017-04-10.
//  Copyright © 2017 Oskar Groth. All rights reserved.
//

import Foundation
import QuartzCore

public extension NSTextField {
    
    public func setStringValueAnimated(string: String, duration: TimeInterval = 0.4) {
        guard stringValue != string else {
            return
        }
        layer?.removeAllAnimations()
        NSAnimationContext.runAnimationGroup({(context: NSAnimationContext) -> Void in
            context.duration = duration
            context.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            animator().alphaValue = 0
        }, completionHandler: {() -> Void in
            self.stringValue = string
            NSAnimationContext.runAnimationGroup({(context: NSAnimationContext) -> Void in
                context.duration = duration
                context.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
                self.animator().alphaValue = 1.0
            }, completionHandler: {() -> Void in })
        })
    }
}
