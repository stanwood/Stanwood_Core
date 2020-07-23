//
//  DisplayContentCell.swift
//  Stanwood Arch Demo
//
//  Created by AT on 9/28/18.
//  Copyright © 2018 Stanwood. All rights reserved.
//

import UIKit
import SourceModel
import StanwoodCore

protocol DisplayContentCellDelegatge: class {
    func didSelectButtonOrAnyOtherFancyCallBackToSomethingLovelyButMakeSureTheFunctionNameIsShortAndConciseSoItIsEasyToRead()
}

class DisplayContentCell: Stanwood.AutoSizeableCell, Fillable, Delegateble {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    weak var delegate: DisplayContentCellDelegatge?
    
    func set(delegate: AnyObject) {
        self.delegate = delegate as? DisplayContentCellDelegatge
    }

    func fill(with type: Model?) {
        
        guard let item = type as? FunkyObject else { return }
    
        titleLabel.text = item.title
    }
    
    @IBAction func testAction(_ sender: UIButton) {
        delegate?.didSelectButtonOrAnyOtherFancyCallBackToSomethingLovelyButMakeSureTheFunctionNameIsShortAndConciseSoItIsEasyToRead()
    }

}
