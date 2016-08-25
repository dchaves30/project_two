//
//  DisplayQuestionModel.swift
//  TrueFalseStarter
//
//  Created by Danilo E Chaves on 8/23/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import GameKit
import UIKit

struct QuestionModel
{
    
    var indexOfSelectedQuestion: Int = 0
    
    let allQuestions: [[String:String]] = [
        ["question":"This was the only US President to serve more than two consecutive terms.", "answer":"Franklin D. Roosevelt"],
        ["question":"Which of the following countries has the most residents?","answer":"Nigeria"],
        ["question":"In what year was the United Nations founded?","answer":"1945"],
        ["question:":"The Titanic departed from the United Kingdom, where was it supposed to arrive?","answer":"New YorkCity"],
        ["question":"Which nation produces the most oil?","answer":"Canada"],
        ["question":"Which country has most recently won consecutive World Cups in Soccer?","answers":"Brazil"],
        ["question":"Which of the following rivers is longest?","answer":"Mississippi"],
        ["question":"Which city is the oldest?","answer":"Mexico City"],
        ["question":"Which country was the first to allow women to vote in national elections?","answer":"Poland"],
        ["question":"Which of these countries won the most medals in the 2012 Summer Games?","answer":"Great Britain"]
    ]
    
    let allAnswers: [[String]] = [
        ["George Washington","Franklin D. Roosevelt","Woodrow Wilson","Andrew Jackson"],
        ["Nigeria","Russia","Iran","Vietnam"],
        ["1918","1919","1945","1954"],
        ["Paris","Washington D.C.","New York City","Boston"],
        ["Iran","Iraq","Brazil","Canada"],
        ["Italy","Brazil","Argetina","Spain"],
        ["Yangtze","Mississippi","Congo","Mekong"],
        ["Mexico City","Cape Town","San Juan","Sydney"],
        ["Poland","United States","Sweden","Senegal"],
        ["France","Germany","Japan","Great Britian"]
    ]
    
    
    
    
    func displayQuestion() -> String {
        
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(allQuestions.count)
        let questionDictionary = allQuestions[indexOfSelectedQuestion]
        
        return questionDictionary["question"]!
        
    }
    
    func displayAllAnswers() ->[String]
    {
        let indexOfSelectedAnswer = allAnswers[indexOfSelectedQuestion]
        
        return indexOfSelectedAnswer
        
        }
    
    func correctAnswer() ->String {
        
        let correctAnswer = allQuestions[indexOfSelectedQuestion]
        
        return correctAnswer["answer"]!
    }
    
    
}
