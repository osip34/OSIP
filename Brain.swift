//
//  Brain.swift
//  CalculatorOsip
//
//  Created by AndreOsip on 6/26/17.
//  Copyright © 2017 AndreOsip. All rights reserved.
//

import Foundation

class Brain: Model {
    
    let output: Output
    
    var operandOne: Double?
    var operandTwo: Double?
    var operation: Operation?
    
    init(with output: Output) {
        self.output = output
    }
    
    
    func input(operation: Operation) {
        if operation == .equal {
            
            var result: Double? = nil
            
            switch self.operation! {
            case .pls: result = (operandOne ?? 0.0) + (operandTwo ?? 0.0)
            case .min: result = (operandOne ?? 0.0) - (operandTwo ?? 0.0)
            case .mul: result = (operandOne ?? 0.0) * (operandTwo ?? 0.0)
            case .div: result = (operandOne ?? 0.0) / (operandTwo ?? 0.0)            default: break
            }
            
            if let result = result {
                output.output(value: "\(result)")
                operandOne = nil
                operandTwo = nil
            }
        } else {
            self.operation = operation
        }
    }
    
    func input(number: Double) {
        if operandOne == nil {
            operandOne = number
        } else if operandTwo == nil {
            operandTwo = number
        }
    }
}
 
