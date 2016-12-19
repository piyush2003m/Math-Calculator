//
//  RectangleViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 18/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit

class RectangleViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lengthTextField: UITextField!
    
    @IBOutlet weak var breadthtextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
    
    let length = lengthTextField.text
        
    let breadth = breadthtextField.text
        
    resultLabel.text = "\(Double(length!)! * Double(breadth!)!)"
    
    
    
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.lengthTextField.delegate = self
        
    self.breadthtextField.delegate = self
    
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

