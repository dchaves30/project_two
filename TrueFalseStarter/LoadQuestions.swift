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
        
        let loadString = questionAndAnswer.getRandomQuestion()
        
        correctAnswer = loadString["answer"]!
        
        questionField.text = loadString["question"]
        
        playAgainButton.hidden = true
        
        answer01.setTitle(loadString["option01"], forState: UIControlState.Normal)
        answer01.layer.cornerRadius = 5
        answer02.setTitle(loadString["option02"], forState: UIControlState.Normal)
        answer02.layer.cornerRadius = 5
        answer03.setTitle(loadString["option03"], forState: UIControlState.Normal)
        answer03.layer.cornerRadius = 5
        answer04.setTitle(loadString["option04"], forState: UIControlState.Normal)
        answer04.layer.cornerRadius = 5
        
    }
}
