//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Casiano, Cameron Joseph on 10/31/19.
//  Copyright © 2019 Casiano, Cameron Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2TextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addNums(_ sender: UIButton) {
        var dNum1 = 0.0
        var dNum2 = 0.0
        var dLabel = 0.0
        
        if let num1 = num1TextField.text, let num2 = num2TextField.text{
            let trimmedNum1 = num1.trimmingCharacters(in: .whitespaces)
            let trimmedNum2 = num2.trimmingCharacters(in: .whitespaces)
            
            if (!trimmedNum1.isEmpty && !trimmedNum2.isEmpty){
            
            // convert the trimmed constants to doubles
            dNum1 = Double(trimmedNum1)!
            dNum2 = Double(trimmedNum2)!
                
                dLabel = dNum1 + dNum2
            }
            else{
                outputLabel.text = "0.0"
        }
    }
        outputLabel.text = (String(dLabel))
    }
    
    @IBAction func subtractNums(_ sender: UIButton) {
        var dNum1 = 0.0
            var dNum2 = 0.0
            var dLabel = 0.0
            
            if let num1 = num1TextField.text, let num2 = num2TextField.text{
                let trimmedNum1 = num1.trimmingCharacters(in: .whitespaces)
                let trimmedNum2 = num2.trimmingCharacters(in: .whitespaces)
                
                if (!trimmedNum1.isEmpty && !trimmedNum2.isEmpty){
                
                // convert the trimmed constants to doubles
                dNum1 = Double(trimmedNum1)!
                dNum2 = Double(trimmedNum2)!
                    
                    dLabel = dNum1 - dNum2
            }
                else{
                        outputLabel.text = "0.0"
                }
        }
            outputLabel.text = (String(dLabel))
    }
    
    @IBAction func multiplyNums(_ sender: UIButton) {
        var dNum1 = 0.0
            var dNum2 = 0.0
            var dLabel = 0.0
            
            if let num1 = num1TextField.text, let num2 = num2TextField.text{
                let trimmedNum1 = num1.trimmingCharacters(in: .whitespaces)
                let trimmedNum2 = num2.trimmingCharacters(in: .whitespaces)
                
                if (!trimmedNum1.isEmpty || !trimmedNum2.isEmpty){
                
                // convert the trimmed constants to doubles
                dNum1 = Double(trimmedNum1)!
                dNum2 = Double(trimmedNum2)!
                    
                    dLabel = dNum1 * dNum2
            }
                else{
                        outputLabel.text = "0.0"
                }
        }
            outputLabel.text = (String(dLabel))
    }
    
    @IBAction func divideNums(_ sender: UIButton) {
        var dNum1 = 0.0
            var dNum2 = 0.0
            var dLabel = 0.0
            
            if let num1 = num1TextField.text, let num2 = num2TextField.text{
                let trimmedNum1 = num1.trimmingCharacters(in: .whitespaces)
                let trimmedNum2 = num2.trimmingCharacters(in: .whitespaces)
                
                if (!trimmedNum1.isEmpty && !trimmedNum2.isEmpty){
                
                // convert the trimmed constants to doubles
                dNum1 = Double(trimmedNum1)!
                dNum2 = Double(trimmedNum2)!
                    
                    dLabel = dNum1 / dNum2
            }
                else{
                        outputLabel.text = "0.0"
                }
        }
            outputLabel.text = (String(dLabel))
    }
}

