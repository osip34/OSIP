//
//  Protocols.swift
//  CalculatorOsip
//
//  Created by AndreOsip on 6/26/17.
//  Copyright © 2017 AndreOsip. All rights reserved.
//

import Foundation


enum Operation {
    case pls
    case min
    case mul
    case div
    case equal
}

protocol Input {
    func enter(value: String)
}

protocol Output {
    func output(value: String)
}

protocol Model {
    func input(number: Double)
    func input(operation: Operation)
}
