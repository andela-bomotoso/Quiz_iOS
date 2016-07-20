//
//  ViewController.swift
//  Quiz
//
//  Created by BUKOLA OMOTOSO on 20/07/2016.
//  Copyright © 2016 ANDELA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel:UILabel!
    @IBOutlet var answerLabel:UILabel!
    
    let questions:[String] = ["From what is cognac made?","What is 7 + 7?","What is the capital of Vermont?"]
    let answers:[String] = ["Grapes", "14","Montpelier"]
    var currentQuestionIndex : Int = 0
    
    override func viewWillAppear(animated: Bool) {
        self.questionLabel.alpha = 0.2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func showNextQuestion(sender:AnyObject)   {
         fadeOut()
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count  {
            currentQuestionIndex = 0
        }
        let question:String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        animateLabelTransitions()
        
    }
    
    @IBAction func showAnswer(sender:AnyObject) {
        let answer:String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    func animateLabelTransitions()  {
        UIView.animateWithDuration(3, animations: {
            self.questionLabel.alpha = 1
        })
    }
    
    func fadeOut()  {
        UIView.animateWithDuration(3, animations: {
            self.questionLabel.alpha = 0
        })
    }


}

