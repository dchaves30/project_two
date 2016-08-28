//
//  PlayNextRound.swift
//  TrueFalseStarter
//
//  Created by Danilo E Chaves on 8/27/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

extension ViewController {
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            loadQuestionAndButtons()
            playAgainButton.hidden = true
        }
    }
}
