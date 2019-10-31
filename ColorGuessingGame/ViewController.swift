//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Lilia Yudina on 10/29/19.
//  Copyright © 2019 Lilia Yudina. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var display: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var highestScore: UILabel!
    @IBOutlet var score: UILabel!
    
    var currentScore = 0
    var currentHighScore = 0
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
        currentScore = 0
        status.text = "Guess what color is the most dominant?"
        score.text = "Score: \(currentScore)"
    }
    
    @IBAction func colorChange(_ sender: UIButton) {
        guard let randomColor = display.backgroundColor else { return }
        
        if currentScore >= currentHighScore {
            currentHighScore = currentScore
            highestScore.text = "Highest score is \(currentHighScore)"
        }
        
        if sender.backgroundColor == colorChoise.rgba(color: randomColor) {
            currentScore += 1
            status.text = "CORRECT👍🏻 Your score is \(currentScore)"
            score.text = "Score: \(currentScore)"
        } else {
            status.text = "WRONG👎🏻 Wanna play again?"
        }
        display.backgroundColor = colorChoise.randomiser()
    }
}
