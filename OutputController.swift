//
//  OutputController.swift
//  CalculatorOsip
//
//  Created by AndreOsip on 6/26/17.
//  Copyright © 2017 AndreOsip. All rights reserved.
//

import Foundation


class OutputController: Output {
    
    var result:String?
    
    func output(value: String) {
        result = value
    }
}
