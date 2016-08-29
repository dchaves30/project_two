//
//  DisplayQuestionModel.swift
//  TrueFalseStarter
//
//  Created by Danilo E Chaves on 8/23/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import GameKit

struct QuestionModel 

{
    
    let allQuestions: [[String:String]] = [
        ["question":"This was the only US President to serve more than two consecutive terms.", "answer":"Franklin D. Roosevelt", "option01":"George Washington","option02":"Franklin D. Roosevelt","option03":"Woodrow Wilson", "option04":"Andrew Jackson"],
        ["question":"Which of the following countries has the most residents?","answer":"Nigeria", "option01":"Nigeria","option02":"Russia","option03":"Iran", "option04":"Vietnam"],
        ["question":"In what year was the United Nations founded?","answer":"1945", "option01":"1918","option02":"1919","option03":"1945", "option04":"1954"],
        ["question":"Which nation produces the most oil?","answer":"Canada", "option01":"Canada","option02":"Iran","option03":"Iraq", "option04":"Brazil"],
        ["question":"Which country has most recently won consecutive World Cups in Soccer?","answer":"Brazil", "option01":"Italy","option02":"Spain","option03":"Argentina", "option04":"Brazil"],
        ["question":"Which of the following rivers is longest?","answer":"Mississippi","option01":"Yangtze","option02":"Mississippi","option03":"Congo", "option04":"Mekong"],
        ["question":"Which city is the oldest?","answer":"Mexico City", "option01":"San Juan","option02":"Sydney","option03":"Cape Town", "option04":"Mexico City"],
        ["question":"Which country was the first to allow women to vote in national elections?","answer":"Poland", "option01":"United States","option02":"Poland","option03":"Sweden", "option04":"Senegal"],
        ["question":"Which of these countries won the most medals in the 2012 Summer Games?","answer":"Great Britain", "option01":"France","option02":"Germany","option03":"Japan", "option04":"Great Britain"],
        ["question":"The Titanic departed from the United Kingdom, where was it supposed to arrive?","answer":"New York City", "option01":"Paris","option02":"Washington D.C.","option03":"New York City", "option04":"Boston"],
    ]
    
    
     func getRandomQuestion() -> [String:String] {
        
        var usedQuestions: [Int] = []
        var indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(allQuestions.count)
        if usedQuestions.contains(indexOfSelectedQuestion)
        {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(allQuestions.count)
            usedQuestions.append(indexOfSelectedQuestion)
            if usedQuestions.count >= 4
            {
                usedQuestions = []
            }
            return allQuestions[indexOfSelectedQuestion]
        }
        else {
            
            usedQuestions.append(indexOfSelectedQuestion)
            return allQuestions[indexOfSelectedQuestion]
            
        }
        

    }
}