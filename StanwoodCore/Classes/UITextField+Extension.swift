//
//  UITextField+Extension.swift
//  StanwoodCore
//
//  Created by Tal Zion on 29/01/2018.
//

import Foundation

extension UITextField {
    
    /// Localizing placeholder and sets the accessibilityIdentifier
    @objc open var localizedPlaceholder: String? {
        get {
            return placeholder
        }
        set {
            // accessibilityIdentifier is set for UITesting tool
            accessibilityIdentifier = newValue
            placeholder = newValue?.localized
        }
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        localizedPlaceholder = placeholder
    }
}