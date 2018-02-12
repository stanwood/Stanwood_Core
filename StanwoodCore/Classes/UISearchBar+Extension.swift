//
//  UISearchBar+Extension.swift
//  StanwoodCore
//
//  Created by Tal Zion on 29/01/2018.
//

import Foundation

extension UISearchBar {
    
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
    
    /**
     Sets the localized placeholder with format.
     
     - Parameters:
        - text: The text to localize
        - arguments: The arguments to replace
     - Returns: the localized placeholder `String?` with format
     */
    @discardableResult
    open func localizePlaceholder(formatKey: String, _ arguments: CVarArg...) -> String? {
        accessibilityIdentifier = formatKey
        self.placeholder = String(format: formatKey.localized, arguments: arguments)
        return self.placeholder
    }
}

