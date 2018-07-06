//
//  ViewController.swift
//  Dicee
//
//  Created by Chris J W Walker on 01/07/2018.
//  Copyright © 2018 CJWW Development. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let dies = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    func rollDice() {
        diceImageViewOne.image = UIImage(named: dies[Int(arc4random_uniform(6))])
        diceImageViewTwo.image = UIImage(named: dies[Int(arc4random_uniform(6))])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
}
