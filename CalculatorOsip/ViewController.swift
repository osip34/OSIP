//
//  ViewController.swift
//  CalculatorOsip
//
//  Created by AndreOsip on 6/26/17.
//  Copyright © 2017 AndreOsip. All rights reserved.
//

import UIKit

 var isTypedSomething = false

class ViewController: UIViewController {
    
    
    
    /*
     input.enter(value: "1")
     input.enter(value: "+")
     input.enter(value: "1")
     input.enter(value: "=")     */
    
    
    @IBOutlet weak var Label: UILabel!
    
    var digit: String? = nil
    
    var output: OutputController!
    var brain: Brain!
    var input: InputController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output = OutputController()
        brain = Brain(with: output)
        input = InputController(with: brain)
    }
    
    @IBAction func OperationButton(_ sender: UIButton) {
        isTypedSomething = false
        let operationTitle = sender.currentTitle!
        if let checkDigit = digit {
            input.enter(value: checkDigit)
        }
        input.enter(value: operationTitle)
        if sender.currentTitle! == "=" {
            Label!.text = output.result
        }
        digit = nil
    }
    
    
    @IBAction func NumButton(_ sender: UIButton) {
        
        digit = sender.currentTitle!
        let textCurrentlyInDysplay = Label!.text!
        
        if !isTypedSomething {
            Label.text = digit
        } else {
            Label!.text = textCurrentlyInDysplay + digit!
        }
        isTypedSomething = true    }
    
    
}

