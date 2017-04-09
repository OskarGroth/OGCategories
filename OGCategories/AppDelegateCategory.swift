//
//  AppDelegateCategory.swift
//  Command Center
//
//  Created by Oskar Groth on 2016-11-05.
//  Copyright © 2016 Cindori. All rights reserved.
//

import Foundation

extension AppDelegate {
    
    class func shared() -> AppDelegate {
        return NSApplication.shared().delegate as! AppDelegate
    }
    
}
