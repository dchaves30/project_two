//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    let questionsPerRound = 4
    var questionsAsked = 0
    var correctQuestions = 0
    var questionAndAnswer = QuestionModel()
    var correctAnswer: String = ""
    
    var gameSound: SystemSoundID = 0
    
    @IBOutlet weak var questionField: UILabel!
    
    @IBOutlet weak var answer01: UIButton!
    @IBOutlet weak var answer02: UIButton!
    @IBOutlet weak var answer03: UIButton!
    @IBOutlet weak var answer04: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        // Start game
        playGameStartSound()
        loadQuestionAndButtons()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func checkAnswer(sender: UIButton) {
        // Increment the questions asked counter
        questionsAsked += 1
        
        if (sender.currentTitle == correctAnswer){
            correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Incorrect! The Answer is \(correctAnswer)"
        }
        
        loadNextRoundWithDelay(seconds: 2)
        
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        showAllQuestionButton()
        
        questionsAsked = 0
        correctQuestions = 0
        nextRound()
    }

}

