//
//  ViewController.swift
//  Quizzler-iOS13
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textButtonTrue: UIButton!
    @IBOutlet weak var textButtonFalse: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var textQuestion: UILabel!
    
    var questionNumber = 0
    var totalTime = 0
    var timeCurrent = 3
    
    //maneria de criar um array de objetos
    //dados parecido com Json
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // aqui e chamado antes da tela carregar
        updateQuestion()
       
    }
     
    @IBAction func handleQuestion(_ sender: UIButton) {
        let anwserSelect = sender.currentTitle!
        
        if allQuestion[questionNumber].anwser == anwserSelect {
//            sender.setTitleColor(UIColor.green, for: .normal)
            sender.backgroundColor = UIColor.green
        
        }else {
//            sender.setTitleColor(UIColor.red, for: .normal)
            sender.backgroundColor = UIColor.red
        }
        if allQuestion.count - 1 > questionNumber {
            questionNumber += 1
           
        }else {
           questionNumber = 0
            progressView.progress = 0.0
        }
        
        Timer.scheduledTimer(timeInterval:0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() {
        textQuestion.text = allQuestion[questionNumber].question
        
//                self.textButtonTrue.setTitleColor(UIColor.white, for: .normal)
                self.textButtonTrue.backgroundColor = UIColor.clear
                
//                self.textButtonFalse.setTitleColor(UIColor.white, for: .normal)
        self.textButtonFalse.backgroundColor = UIColor.clear
        
        //nosso questionNumber comeca no 0. Entao o progresso bar nao ficara da forma correta, por isso somo mais 1
        let progressCurrent = Float(questionNumber + 1) / Float(allQuestion.count)
        progressView.progress = progressCurrent
    }

}

