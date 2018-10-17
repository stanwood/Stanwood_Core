
//
//  AppData.swift
//  MyTestProject
//
//  Created by Aaron Mc Tieguy on 10/16/2018.
//  Copyright © 2018 Stanwood. All rights reserved.
//

import Foundation

class AppData {
    
    var funkyObjects: FunkyObjects! {
        
        let testObject1 = FunkyObject(id: "testObject1", title: "testObject1")
        let testObject2 = FunkyObject(id: "testObject2", title: "testObject2")
        let testObject3 = FunkyObject(id: "testObject3", title: "testObject3")
        let testObject4 = FunkyObject(id: "testObject4", title: "testObject4")
        let testObject5 = FunkyObject(id: "testObject5", title: "testObject5")
        let testObject6 = FunkyObject(id: "testObject6", title: "testObject6")
        
        return FunkyObjects(items: [testObject1, testObject2, testObject3,testObject4,testObject5,testObject6])
    }
}
