//
//  ViewController.swift
//  100DaysOfSwiftProject2
//
//  Created by HexaHack on 02.06.2020.
//  Copyright © 2020 HexaHack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    

    
    var correctAnswer = 0
    var score = 0
    var countries = [String]()
    var buttons = [UIButton]()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
            
       buttons = [button1, button2, button3]
        setUpButtonBorders()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        askQuestion()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Score", style: .done, target: self, action: #selector(showScore))
    }
    
    @objc func showScore() {
        let ac = UIAlertController(title: "", message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default ))
        present(ac, animated: true)
    }
    
    func setUpButtonBorders() {
        for button in buttons {
            button.layer.borderWidth = 1
            button.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).cgColor
        }
    }
    
    func  askQuestion(action: UIAlertAction! = nil) {        
        countries.shuffle()
        
        correctAnswer = Int.random(in: 0...2)
        
        for (index, button) in buttons.enumerated(){
            button.setImage(UIImage(named: countries[index]), for: .normal)
        }
        title = countries[correctAnswer].uppercased()
        
    }
    
    @IBAction func buttonTaped(_ sender: UIButton) {
        var title: String
        var massege: String
        
        counter += 1
        if sender.tag == correctAnswer {
            title = "Correct"
            massege = "You are smart, take pirozhok"
            score += 1
        } else {
            title = "Wrong"
            massege = "That’s the flag of \(countries[sender.tag].capitalized)"
            score -= 1
        }
        if counter == 10 {
            title = "Your score is \(score)"
            massege = "Game Over"
            score = 0
            counter = 0
        }
        let ac = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))

        present(ac, animated: true)
        
    }    
        

}

