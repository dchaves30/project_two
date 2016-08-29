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
    var repeatedQuestion: [String] = [] //Array used to check repeated questions in the LoadQuestions method
    var correctQuestions = 0
    var questionAndAnswer = QuestionModel() //struct that returns a random question based on the collection
    var correctAnswer: String = "" //variable that holds the correctAnswer in the LoadQuestion method
    var counter = 0
    var counterCorrectButton = 0
    
    var gameSound: SystemSoundID = 0
    
    @IBOutlet weak var questionField: UILabel!
    
    @IBOutlet weak var answer01: UIButton!
    @IBOutlet weak var answer02: UIButton!
    @IBOutlet weak var answer03: UIButton!
    @IBOutlet weak var answer04: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet var allQuestionButtons: [UIButton]! //collection of all question buttons

    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        // Start game
        playGameStartSound()
        loadQuestionAndButtons() // load the question to the text field and each option to the respective buttons
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func checkAnswer(sender: UIButton) {
        // Increment the questions asked counter
        questionsAsked += 1
        
        //disable all the buttons to avoid user presssing it multiple times when pressed
        for n in allQuestionButtons
        {
            n.enabled = false
        }
        
        //check if the button title matches the correct answer
        if (sender.currentTitle == correctAnswer){
            correctQuestions += 1
            questionField.text = "Correct!"
            showCorrectButtonOnly()
        } else {
            questionField.text = "Incorrect! The Answer is \(correctAnswer)"
            showCorrectButtonOnly()
        }
        
        loadNextRoundWithDelay(seconds: 2)
        
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        showAllQuestionButton() //show all hidden question buttons
        
        questionsAsked = 0
        correctQuestions = 0
        nextRound()
    }

}

