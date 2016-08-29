//
//  ShowCorrectButton.swift
//  TrueFalseStarter
//
//  Created by Danilo E Chaves on 8/28/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

extension ViewController {
    
    func showCorrectButtonOnly()
    {
        for n in allQuestionButtons
        {
            if n.currentTitle != correctAnswer
            {
                n.hidden = true
            }
        }
    }
}

