//
//  String+Localization.swift
//  DiskManager
//
//  Created by Oskar Groth on 2017-01-19.
//  Copyright © 2017 Oskar Groth. All rights reserved.
//

import Foundation

public extension String {
    
    public var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    public func localizedWithComment(comment:String) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
    
}
