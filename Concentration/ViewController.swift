//
//  ViewController.swift
//  Concentration
//
//  Created by LI RUNFENG on 21/11/2017.
//  Copyright © 2017 LI RUNFENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //superclass: UIViewController
    //put all method here
    //Q1: how we could make the button active
    
    var flipCount = 0
    {
        didSet
        {
            flipCountLabel.text = "Flips \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    //collection - ---array!
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["🎃","👻","🎃","👻"]
    @IBAction func touchCard(_ sender: UIButton)
    {
         flipCount += 1
        if let cardNumber = cardButtons.index(of: sender)
        {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else
        {
            print("choose card was not in cardButtons")
        }
        
       
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton)
    {
        if button.currentTitle == emoji
        {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
    }
  
    

}

