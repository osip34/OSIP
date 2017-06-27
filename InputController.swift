//
//  InputController.swift
//  CalculatorOsip
//
//  Created by AndreOsip on 6/26/17.
//  Copyright © 2017 AndreOsip. All rights reserved.
//

import Foundation


class InputController: Input {
    
    
    
    let model: Model
    
    init(with model: Model) {
        self.model = model
    }
    
    func enter(value: String) {
        switch value {
        case "1"..."9": model.input(number: Double(value)!)
        case "+": model.input(operation: .pls)
        case "-": model.input(operation: .min)
        case "×": model.input(operation: .mul)
        case "÷": model.input(operation: .div)
        case "=": model.input(operation: .equal)
        default: break
        }
    }
    
}
