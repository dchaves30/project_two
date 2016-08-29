//
//  LoadQuestions.swift
//  TrueFalseStarter
//
//  Created by Danilo E Chaves on 8/27/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

extension ViewController {
    
    func loadQuestionAndButtons() {
        
        var loadString = questionAndAnswer.getRandomQuestion()
        
         correctAnswer = loadString["answer"]! //assign the correct answwer to the variable declared in the view controller
        
       //check if the question buttons are disabled or hidden. if yes, enable and show them
        for n in allQuestionButtons
        {
            if n.enabled == false || n.hidden == true {
                n.enabled = true
                n.hidden = false
            }
        }
        
        
       //check if the string "answer" exists. if yes, generates new question and assign new answer to array. if not, assign answer to array and assign values to buttons and labels
        if repeatedQuestion.contains(correctAnswer)
        {
            //print(repeatedQuestion)
            loadString = questionAndAnswer.getRandomQuestion()
            correctAnswer = loadString["answer"]!
            repeatedQuestion.append(correctAnswer)
            
            if repeatedQuestion.count >= questionsAsked
            {
                repeatedQuestion = []
                 //print(repeatedQuestion)
            }
            
            questionField.text = loadString["question"]
            
            playAgainButton.hidden = true
            
            // assing labels and cornerRadius to all buttons
            for n in allQuestionButtons
            {
                counter += 1
                n.layer.cornerRadius = 5
                //print("option0"+"\(counter)")
                n.setTitle(loadString["option0"+"\(counter)"], forState: UIControlState.Normal)
            }

            counter = 0
        }
        else {
            
            repeatedQuestion.append(correctAnswer)
            
            questionField.text = loadString["question"]
            
            playAgainButton.hidden = true
            
            for n in allQuestionButtons
            {
                counter += 1
                n.layer.cornerRadius = 5
                //print("option0"+"\(counter)")
                n.setTitle(loadString["option0"+"\(counter)"], forState: UIControlState.Normal)
                
            }
            
            counter = 0

           
        }
    
       
        
        
        
        
    }
}
