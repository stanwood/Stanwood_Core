//
//  Object.swift
//  StanwoodCore_Tests
//
//  Created by Tal Zion on 03/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import StanwoodCore

struct Deal: Typeable {

    var id: String?

    init(id: String?) {
        self.id = id
    }

    static func ==(lhs: Deal, rhs: Deal) -> Bool {
        return lhs.id == rhs.id
    }
}
