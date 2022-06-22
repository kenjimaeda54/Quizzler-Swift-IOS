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
    
    var questionBrain = QuizBrain()
    
    
    
    //maneria de criar um array de objetos
    //dados parecido com Json
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // aqui e chamado antes da tela carregar
        updateQuestion()
        
    }
    
    @IBAction func handleQuestion(_ sender: UIButton) {
        let anwserSelect = sender.currentTitle!
        
        if questionBrain.checkAnswerUser(anwserSelect)  {
            //sender.setTitleColor(UIColor.green, for: .normal)
            sender.backgroundColor = UIColor.green
            
        }else {
            //sender.setTitleColor(UIColor.red, for: .normal)
            sender.backgroundColor = UIColor.red
        }
        
        questionBrain.getNextQuestion()
        
        Timer.scheduledTimer(timeInterval:0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() {
        //precisa criar uma funcao para pegar os valores porque apenas a copia nao resolve
        textQuestion.text = questionBrain.getCurrrentQuestion()
        let progressCurrent = questionBrain.getCurrentProgress()
        //self.textButtonTrue.setTitleColor(UIColor.white, for: .normal)
        self.textButtonTrue.backgroundColor = UIColor.clear
        
        //self.textButtonFalse.setTitleColor(UIColor.white, for: .normal)
        self.textButtonFalse.backgroundColor = UIColor.clear
        
        //nosso questionNumber comeca no 0. Entao o progresso bar nao ficara da forma correta, por isso somo mais 1
        progressView.progress = progressCurrent
    }
    
}

