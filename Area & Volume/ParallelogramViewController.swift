//
//  ParallelogramViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 18/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit


class ParallelogramViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var baseTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
    
        let height = heightTextField.text
        
        let base = baseTextField.text
        
        resultLabel.text = "\(Double(height!)! * Double(base!)!)"
    
    
    
    
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.heightTextField.delegate = self
        
    self.baseTextField.delegate = self
    
    
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


