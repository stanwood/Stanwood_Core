//
//  ViewController.swift
//  StanwoodCore
//
//  Created by Tal Zion on 10/09/2017.
//  Copyright (c) 2017 Tal Zion. All rights reserved.
//

import UIKit
import StanwoodCore

class Tables: Stanwood.Elements<Deal> {

    override func cellType(forItemAt _: IndexPath) -> Fillable.Type? {
        return TableViewCell.self
    }
}

class Collections: Stanwood.Elements<Deal> {

    override func cellType(forItemAt _: IndexPath) -> Fillable.Type? {
        return CollectionViewCell.self
    }
}

class CoreExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIBarButtonItem()
        button.localizedTitle = "TEST_TITLE"
    }
}
