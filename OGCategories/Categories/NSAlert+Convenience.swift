//
//  NSAlert+Convenience.swift
//  Command Center
//
//  Created by Oskar Groth on 2016-09-11.
//  Copyright © 2016 Cindori. All rights reserved.
//

import Foundation

public extension NSAlert {
    
    public class func show(title: String, message: String, style: NSAlertStyle) {
        let alert = NSAlert()
        alert.messageText = title
        alert.informativeText = message
        alert.alertStyle = style
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
    
}
