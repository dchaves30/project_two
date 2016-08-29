//
//  DisplayScore.swift
//  TrueFalseStarter
//
//  Created by Danilo E Chaves on 8/27/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

extension ViewController {
    
    func hideAllQuestionButton() {
        
        answer01.hidden = true
        answer02.hidden = true
        answer03.hidden = true
        answer04.hidden = true
    }
    
    func showAllQuestionButton() {
        
        answer01.hidden = false
        answer02.hidden = false
        answer03.hidden = false
        answer04.hidden = false
        
    }
    
    func displayScore(){
        
        // Hide the answer buttons
        hideAllQuestionButton()
        
        // Display play again button
        playAgainButton.hidden = false
        
        //Provide feedback to the user based on their score
        if correctQuestions <= 2{
            questionField.text = "Try Again!\nYou got \(correctQuestions) out of \(questionsPerRound) correct."
        }
        else if correctQuestions == 4 {
         
            questionField.text = "Perfect Score!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        }
        else {
            
            questionField.text = "Not Bad!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        }
        
        
    }


    
}
