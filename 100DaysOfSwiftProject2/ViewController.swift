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

    override func viewDidLoad() {
        super.viewDidLoad()
            
       buttons = [button1, button2, button3]
        setUpButtonBorders()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        askQuestion()
        
    }
    
    func setUpButtonBorders() {
        for button in buttons {
            button.layer.borderWidth = 1
            button.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).cgColor
        }
    }
    }
    

}

