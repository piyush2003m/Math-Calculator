//
//  SquareViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 18/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit

class SquareViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lengthTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
    
    let length = lengthTextField.text
        
    resultLabel.text = "\(Double(length!)! * 4)"
    
    
    
    
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.lengthTextField.delegate = self 
    
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



