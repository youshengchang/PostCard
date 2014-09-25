//
//  ViewController.swift
//  PostCard
//
//  Created by yousheng chang on 9/24/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var enterNameTextField: UITextField!
    
    
    @IBOutlet var enterMessageTextField: UITextField!
    
    @IBOutlet var messageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        messageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        println("This is test")
        
        
        
        
    }
}

