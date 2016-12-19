//
//  VolumeViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 18/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit

class VolumeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lengthTextField: UITextField!
    
    @IBOutlet weak var breadthTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
    
    let length = lengthTextField.text
        
    let breadth = breadthTextField.text
        
    let height = heightTextField.text
        
    resultLabel.text = "\(Double(length!)! * Double(breadth!)! * Double(height!)!)"
        
    
    
    
    
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.lengthTextField.delegate = self
        
    self.breadthTextField.delegate = self
        
    self.heightTextField.delegate = self
        
    
    
    
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


