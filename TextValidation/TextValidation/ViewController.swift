//
//  ViewController.swift
//  TextValidation
//
//  Created by Derek Stengel on 2/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameEntry: UITextField!
    @IBOutlet weak var passwordEntry: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func validatePassword() {
        if let password = passwordEntry.text, password.count >= 8, password.rangeOfCharacter(from: CharacterSet(charactersIn: "!@#$%^&*()-_=+[]{}|;:'\",.<>/?")) != nil {
            displayLabel.text = "All good!"
        } else {
            displayLabel.text = "Password needs at least 8 characters and at least one special character"
        }
        
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        validatePassword()
    }
}


