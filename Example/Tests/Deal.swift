//
//  Object.swift
//  StanwoodCore_Tests
//
//  Created by Tal Zion on 03/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import StanwoodCore

struct Deal: Typeable, Codable {
    
    var id: String?
    
    init(id: String?) {
        self.id = id
    }
}
