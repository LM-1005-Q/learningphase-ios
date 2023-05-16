//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows you to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
   // override func viewDidLoad() {
        //super.viewDidLoad()// //turned to comments//
        
    //}

    //UI Button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //leftDiceNumber = 1
        //print("leftDiceNumber at start = \(leftDiceNumber)")
        //print statements can be alternatively used to diag the issues if the code is not running as it was supposed to
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName:"DiceTwo"),
            UIImage(imageLiteralResourceName:"DiceThree"),
            UIImage(imageLiteralResourceName:"DiceFour"),
            UIImage(imageLiteralResourceName:"DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")]
        
        //Picks randomly from array, preffered
        diceImageView1.image = diceArray.randomElement()
        
        //more precie if you want to track the start and end, for your info
        //Generate random numbers
        //Int.randon(0...11111111111)
        diceImageView2.image = diceArray [Int.random(in: 0...5)]
        
        leftDiceNumber += 1
        
        /*leftDiceNumber = 2
        print("leftDiceNumber at end = \(leftDiceNumber)")*/
        rightDiceNumber -= 1
        
        
    }
}

