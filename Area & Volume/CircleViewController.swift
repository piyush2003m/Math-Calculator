//
//  CircleViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 17/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit

class CircleViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var radiusTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findArea(sender: AnyObject) {
    
        let Pi = 3.14
    
        let radius = Double(radiusTextField.text!)! * Double(radiusTextField.text!)!
        
        resultLabel.text = String(Pi * radius)
        
       }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.radiusTextField.delegate = self
        
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