//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Avery Gu on 1/16/18.
//  Copyright © 2018 Gu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    //code below executes when app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The View Loaded!")
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("*** The button was clicked!") //use distinguishing characters to help debug more easily
    
//        let message1 = "You Are da Bomb"
//        let message2 = "You Are Great"
//        let message3 = "You Are Amazing"
//
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//            messageLabel.textColor = UIColor.blue
//        }
//        else if messageLabel.text == message2{
//            messageLabel.text = message3
//            messageLabel.textColor = UIColor.red
//        }
//        else{
//            messageLabel.text = message1
//            messageLabel.textColor = UIColor.green
//        }
        
        let messages = ["You Are Fantastic", "You Are Great",
                        "You Are Amazing", "Genius Bar Needs You!",
                        "You Brighten My Day!"]
        
        if index == 5{
            index = 0
        }
        else{
            messageLabel.text = messages[index]
            index += 1
        }
    }
}

