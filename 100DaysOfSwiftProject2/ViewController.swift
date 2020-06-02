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
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTaped(_ sender: UIButton) {
    }
    

}

