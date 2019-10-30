//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Lilia Yudina on 10/29/19.
//  Copyright © 2019 Lilia Yudina. All rights reserved.
//

import UIKit

var highScore = 0


class ViewController: UIViewController {

    @IBOutlet weak var display: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var status: UILabel!
    
    var score: Int = 0
    let colorChoise = ChooseColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.backgroundColor = colorChoise.randomiser()
        redButton.backgroundColor = .red
        greenButton.backgroundColor = .green
        blueButton.backgroundColor = .blue
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        display.backgroundColor = colorChoise.randomiser()
        score = 0
        status.text = "Guess what color is the most dominant?"
    }
    
    @IBAction func colorChange(_ sender: UIButton) {
        guard let randomColor = display.backgroundColor else { return }
        
        if sender.backgroundColor == colorChoise.rgba(color: randomColor) {
            score += 1
            status.text = "CORRECT👍🏻 Your score is \(score)"
        } else {
            status.text = "WRONG👎🏻 Wanna play again?"
           score = 0
        }
        display.backgroundColor = colorChoise.randomiser()
    }
}
