//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Avery Gu on 1/16/18.
//  Copyright © 2018 Gu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 11
    let numberOfSounds = 3
    
    //code below executes when app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The View Loaded!")
    }
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }
            catch{
                print("ERROR: data in \(soundName) coudn't be played as a sound.")
            }
            
        }
        else {
            print("ERROR: file \(soundName) didn't load.")
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        
        return newIndex
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("*** The button was clicked!") //use distinguishing characters to help debug more easily
        
        let messages = ["You Are Fantastic", "You Are Great",
                        "You Are Amazing", "Genius Bar Needs You!",
                        "You Brighten My Day!"]
        
        //Show a message
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        awesomeImage.isHidden = false
        
        //Show an image
        
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        //Play a sound
        
        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        var soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)

    }
}




































