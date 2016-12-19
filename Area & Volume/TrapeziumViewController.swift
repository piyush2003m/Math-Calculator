//
//  TrapeziumViewController.swift
//  Area & Volume
//
//  Created by Piyush Maheshwari on 17/12/16.
//  Copyright © 2016 Piyush Maheshwari. All rights reserved.
//

import Foundation
import UIKit


class TrapeziumViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var A: UITextField!
    
    @IBOutlet weak var B: UITextField!
    
    @IBOutlet weak var Height: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func FindResult(sender: AnyObject) {
    
    let aLength = A.text
        
    let bLength = B.text
        
    let main = aLength! + bLength!
        
    let heightLength = Height.text
        
        resultLabel.text = "\(1/2 * Double(main)! * Double(heightLength!)!)"
        
        
    
    
    
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    self.A.delegate = self
        
    self.B.delegate = self
        
    self.Height.delegate = self
    
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
