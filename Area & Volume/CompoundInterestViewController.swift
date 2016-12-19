//
//  CompoundInterestViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 19/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit

class CompoundInterestViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var capitalTextField: UITextField!
    
    @IBOutlet weak var rateOfInterestTextField: UITextField!
    
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
    
    let capital = capitalTextField.text
        
    let rateOfInterest = rateOfInterestTextField.text
        
    let time = timeTextField.text
        
    let main = 1 + Double(rateOfInterest!)!/100
        
    let main2 = pow(main,Double(time!)!)
        
    let final = Double(capital!)! * main2 - Double(capital!)!
        
        resultLabel.text = "\(String(format:"%.2f", final))"
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.capitalTextField.delegate = self
        
    self.rateOfInterestTextField.delegate = self
        
    self.timeTextField.delegate = self
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (textField:UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }

    
    
}



