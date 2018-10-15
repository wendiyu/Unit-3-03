

// Created on: October-11-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for creating the number guessing game 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let NUMBERTOGUESS : Int = Int(arc4random_uniform(3) + 1)
    
    let questionLable = UILabel()
    let checkNumberLable = UILabel()
    let numberTextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter these following number for specific guesture 1) Rock 2) Paper 3) Scissor"
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Put a whole number    "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 5).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Battle", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(checkNumberGuessing), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // step for test case to check program working or not 
        //checkNumberLable.text = " The number is: \(NUMBERTOGUESS)  "
        //view.addSubview(checkNumberLable)
        //checkNumberLable.translatesAutoresizingMaskIntoConstraints = false
        //checkNumberLable.topAnchor.constraint(equalTo: answerLable.topAnchor, constant: 20).isActive = true
        //checkNumberLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func checkNumberGuessing() {
        // show answers 
        let numberEnter : Int =  Int(numberTextField.text!)!
        
        if numberEnter < 1 || numberEnter > 3 {
            answerLable.text = " Invalid input. "
        }
        else if numberEnter == 1 && NUMBERTOGUESS == 2 {
            answerLable.text = "You lose! Computer picks paper."
        }
        else if numberEnter == 1 && NUMBERTOGUESS == 3 {
            answerLable.text = "You win! Computer picks scissor."
        }
        else if numberEnter == 2 && NUMBERTOGUESS == 1 {
            answerLable.text = "You win! Computer picks rock."
        }
        else if numberEnter == 2 && NUMBERTOGUESS == 3 {
            answerLable.text = "You lose! Computer picks scissor."
        }
        else if numberEnter == 3 && NUMBERTOGUESS == 1 {
            answerLable.text = "You lose! Computer picks rock."
        }
        else if numberEnter == 3 && NUMBERTOGUESS == 2 {
            answerLable.text = "You win! Computer picks paper."
        }
        else {
            answerLable.text = "It is a tie. "
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
