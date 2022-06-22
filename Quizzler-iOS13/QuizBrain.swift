//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by kenjimaeda on 22/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let allQuestion = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    var questionNumber = 0
    var scoreNumber = 0
    
    //se colocar o _ nao preciso chamar o parametro externo
    //sem ele quem estiver chamdno a funcao deveria fazer (userAnswer)
    mutating func checkAnswerUser(_ userAnswer:String) -> Bool {
        if  userAnswer == allQuestion[questionNumber].anwser {
            scoreNumber += 1
            return true
        }else {
            return false
        }
    }
    
    func getCurrrentQuestion() -> String {
        return allQuestion[questionNumber].question
    }
    
    func getCurrentProgress() -> Float {
        return Float(questionNumber + 1) / Float(allQuestion.count)
    }
    
    // quando tenta alterar uma propriedade interna de uma struct ela atribui o self
    //self e imutavel,entao para podermos alterar a propriedade interna da struct
    //colocamos na frente a palvra reservada mutating
    mutating func getNextQuestion() {
        if allQuestion.count - 1 > questionNumber {
            questionNumber += 1
            
        }else {
            scoreNumber = 0
            questionNumber = 0
        }
    }
    
    func getCurrentScore() -> String {
        return "Score: \(scoreNumber)"
    }
    
}
