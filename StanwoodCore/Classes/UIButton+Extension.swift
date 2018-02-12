//
//  UIButton+Extension.swift
//  Pods-StanwoodCore_Example
//
//  Created by Tal Zion on 09/10/2017.
//  Copyright © 2017 stanwood GmbH. All rights reserved.
//

import Foundation

extension UIButton {
    
    /// Localizing button title
    @objc open var localizedTitle: String? {
        get {
            return titleLabel?.text
        }
        set {
            // accessibilityIdentifier is set for UITesting tool
            accessibilityIdentifier = newValue
            setTitle(newValue?.localized, for: .normal)
        }
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        localizedTitle = titleLabel?.text
    }
    
    /**
     Sets the title to use for the specified state.
     Use this method to set the title for the button. The title you specify derives its formatting from the button’s associated label object. If you set both a title and an attributed title for the button, the button prefers the use of the attributed title over this one.
     At a minimum, you should set the value for the normal state. If a title is not specified for a state, the default behavior is to use the title associated with the normal state. If the value for normal is not set, then the property defaults to a system value.
    
     - Parameters:
       - title: The title to localize and use for the specified state.
       - state: The state that uses the specified title. The possible values are described in UIControlState.
       - tableName: the .string table name if any
     - Returns: the localised title for state
     */
    @discardableResult
    @objc open func setLocalizedTitle(_ title: String?, for state: UIControlState = .normal, fromTableName tableName: String? = nil) -> String? {
        accessibilityIdentifier = title
        setTitle(title?.localize(fromTableName: tableName), for: state)
        return self.title(for: state)
    }
    
    /**
     Sets the image to use for the specified state.
     In general, if a property is not specified for a state, the default is to use the normal value. If the normal value is not set, then the property defaults to a system value. Therefore, at a minimum, you should set the value for the normal state.
     
     - Parameters:
        - image: The image to use for the specified state.
        - identifier: The accessibilityIdentifier used for UITesting
        - state: The state that uses the specified title. The values are described in UIControlState.
     */
    @objc open func setImage(_ image: UIImage?, withIdentifier identifier: String, for state: UIControlState = .normal) {
        accessibilityIdentifier = identifier
        setImage(image, for: state)
    }
    
    /**
     Sets the localized button title with format.
     
     - Parameters:
        - text: The text to localize
        - arguments: The arguments to replace
     - Returns: the localized placeholder `String?` with format
     */
    @discardableResult
    open func localizeTitle(formatKey: String, for state: UIControlState = .normal, _ arguments: CVarArg...) -> String? {
        accessibilityIdentifier = formatKey
        let title = String(format: formatKey.localized, arguments: arguments)
        setTitle(title, for: state)
        return self.titleLabel?.text
    }
}
