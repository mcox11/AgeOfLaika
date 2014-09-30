//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Matthew Cox on 9/30/14.
//  Copyright (c) 2014 Matthew Cox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        // get user input from TextField
        let humanYearsNum = humanYearsTextField.text.toInt()!
        let dogYearMultiplier = 7
        var dogYearsNum = humanYearsNum * dogYearMultiplier
        
        //Unhide label and display answer
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "Dog is \(dogYearsNum) Human years old."
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

}

