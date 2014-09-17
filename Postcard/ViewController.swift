//
//  ViewController.swift
//  Postcard
//
//  Created by Jason Noble on 9/16/14.
//  Copyright (c) 2014 Comverge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

