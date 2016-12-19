//
//  TriangleViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 18/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit


class TriangleViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var baseTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
    
        let Base = baseTextField.text
        
        let height = heightTextField.text
        
        let main = Double(Base!)! * Double(height!)!
        
        resultLable.text = "\(1/2 * main)"
        
        
    
    
    
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.baseTextField.delegate = self
        
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
